---
id: 202601271447
title: "AI Agent 的安全風險"
created: 2026-01-27
updated: 2026-01-27
tags: [topic/ai-agent, topic/security, topic/risk, status/seedling]
aliases: [AI Agent Security Risks, Agent 安全考量]
---

# AI Agent 的安全風險

當你給予 AI Agent 在本地機器上運行的權限時，你同時也給予它**做任何你能做的事**的能力。這帶來了嚴重的安全考量。

## 主要風險類型

### 1. Non-deterministic 行為
- AI 系統是非確定性的（non-deterministic）
- 可能會 hallucinate（產生幻覺）
- 無法 100% 預測它會做什麼

### 2. 意外行動
- 可能翻閱你的聯絡人並自己決定發送訊息
- 可能存取敏感資料
- 可能執行你沒有預期的操作

> 具體風險：AI 可能翻閱你的聯絡人，然後自己決定發訊息給你的前女友 😅
> — Eric Befor

### 3. 缺乏 Guardrails
- 本地 AI Agent 通常沒有像雲端服務那樣的安全護欄
- 不會詢問「你確定要這樣做嗎？」就直接執行
- 這可能是 Anthropic 還沒發布類似產品的原因

### 4. 開放 Ports
- 本地服務可能有開放的網路端口
- 潛在的外部攻擊向量
- 尚未經過大規模安全測試（battle test）

**實際案例**：2026 年 1 月有傳言稱掃描發現 900+ Clawdbot instances 暴露，但後來被澄清為**誤解**——那些是 MDNS responses，實際真正暴露的只有約 **12 個** instances。（見 [[YouTube - Clawdbot is a Security Nightmare by Low Level]]）

儘管數字被誇大，但這仍提醒我們：**部署 AI Agent 時要注意認證設定**。

### 5. Prompt Injection
- LLM 無法區分「控制指令」和「使用者資料」
- 每個資料來源（email、Discord、網頁）都是攻擊面
- **這是 LLM 的根本性問題，目前無完美解決方案**

詳見：[[Prompt Injection 攻擊]]

## 緩解策略

1. **隔離環境** — 使用獨立的機器或 VM（見 [[本地運行 vs 雲端運行 AI Agent#隔離環境策略]]）
2. **最小權限原則** — 只給予必要的存取權限
3. **監控** — 定期檢查 AI 的行為記錄（見 [[Command Audit Log 的重要性]]）
4. **獨立帳號** — 給 AI 專用的 email 和社交帳號
5. **Sandbox 啟動** — 新工具先在 sandbox 環境測試

## 為什麼這很重要

AI Agent 不像普通軟體——它能：
- 讀取你的私人訊息
- 存取你的檔案
- 以你的名義發送郵件
- 控制你的智慧家居

這種深度存取下，信任成本極高。開源讓信任可驗證（見 [[開源 AI Agent 的優勢]]）。

---

## 連結

- 上層：[[Clawdbot MOC]]
- 相關：[[Clawdbot]]、[[本地運行 vs 雲端運行 AI Agent]]
- 成本：[[AI 工具的成本考量]]
- 審計：[[Command Audit Log 的重要性]]
- 信任：[[開源 AI Agent 的優勢]]

## 參考

- [[YouTube - Clawdbot Explained In 5 mins]]
- [[YouTube - Clawdbot is a Security Nightmare by Low Level]] — 技術性安全分析
- [[YouTube - Clawdbot Sucks Actually by Nick Saraev]] — 900+ exposed instances 案例
