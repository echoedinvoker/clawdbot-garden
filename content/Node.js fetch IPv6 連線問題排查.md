---
id: 202601271354
title: "Node.js fetch IPv6 連線問題排查"
created: 2026-01-27
updated: 2026-01-27
tags: [topic/nodejs, topic/networking, topic/troubleshooting, status/seedling]
aliases: []
---

# Node.js fetch IPv6 連線問題排查

當 `curl` 可以正常連線，但 Node.js 的 `fetch` 卻失敗（`TypeError: fetch failed`、`ETIMEDOUT`）時，很可能是 IPv6 解析問題。

Node.js 22+ 內建的 undici fetch 會優先嘗試 IPv6，如果系統 DNS 只回傳 IPv6 但網路環境 IPv6 不通，就會超時失敗。

## 診斷步驟

```bash
# 1. 確認 curl 可以連線
curl https://api.example.com/endpoint

# 2. 測試 Node.js fetch
node -e "fetch('https://api.example.com').then(r=>r.json()).then(console.log).catch(console.error)"

# 3. 檢查 DNS 回傳的是 IPv4 還是 IPv6
getent hosts api.example.com

# 4. 強制 curl 用 IPv4 測試
curl -4 https://api.example.com/endpoint
```

## 解決方案

### 方案一：加入 /etc/hosts 強制 IPv4

```bash
# 先找出 IPv4 地址
curl -4 -v https://api.example.com 2>&1 | grep "Trying"

# 加入 /etc/hosts
echo '149.154.166.110 api.example.com' | sudo tee -a /etc/hosts
```

### 方案二：設定 Node.js 優先使用 IPv4

```bash
NODE_OPTIONS="--dns-result-order=ipv4first" node app.js
```

或在 systemd service 加入：
```ini
Environment="NODE_OPTIONS=--dns-result-order=ipv4first"
```

## 為什麼重要

這是一個容易被忽略的問題，因為 curl 能用會讓人以為網路沒問題。了解 Node.js 和系統工具的 DNS 解析行為差異，可以更快定位問題。

## 連結

- 上層：Clawdbot MOC
- 相關：[[Clawdbot 設定指南]]

## 參考

- 實際案例：Clawdbot 連接 Telegram API 時遇到此問題（2026-01-27）
