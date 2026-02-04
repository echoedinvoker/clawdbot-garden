---
id: 202601270811
title: "Clawdbot"
created: 2026-01-27
updated: 2026-01-27
tags: [topic/ai, topic/tools, status/seedling]
aliases: [Clawdbot 是什麼]
---

# Clawdbot

Clawdbot（拼法：C-L-A-W-D-bot）是一個開源的個人 AI 助理，可在自己的設備上運行。被稱為「有手的 Claude」——不只是聊天，還能實際執行任務。

## ⚠️ 常見誤解

**Clawdbot 不是 Claude Code！**
- Clawdbot 是獨立的開源專案
- 可以使用 Claude Code 作為底層，也可以用 Gemini、ChatGPT 等
- 兩者的差異見 [[Clawdbot 與 Claude Code 的差異]]

```
Claude (LLM)
    ├── Claude.ai (Web Chat)
    ├── Claude Code (Coding Agent)
    └── Clawdbot (可使用 Claude Code、Gemini、ChatGPT 等)
```

## 核心特色

- **多平台整合**：支援 WhatsApp、Telegram、Slack、Discord、Signal、iMessage、Teams 等通訊軟體
- **本地記憶存儲**：記憶與思考分離，換模型不會丟失記憶，資料完全存在自己的設備
- **主動式**：會學習你的偏好並主動執行任務（見 [[AI Agent 的記憶系統設計]]）
- **完整權限**：可以執行任何你能在電腦上做的事（這也是風險來源，見 [[AI Agent 的安全風險]]）

## 架構

| 組件 | 功能 |
|------|------|
| Gateway | 連接各種通訊平台 |
| Agent | 大腦，可設定使用 Claude、ChatGPT 等 LLM |
| Memory | 本地記憶儲存 |
| Skills | 技能模組（網頁瀏覽、日曆、Email、Excel 等） |

## 安裝

需要 **Node.js >= 22**。

```bash
# 如果用 fnm 管理 Node 版本
fnm install 22
fnm default 22

# 安裝 Clawdbot
npm install -g clawdbot@latest

# 執行設定精靈（自動建立 systemd user service）
clawdbot onboard --install-daemon
```

支援 macOS、Linux、Windows (WSL2)。官方文件明確指出「Linux 是不錯的選擇」，不需要特地買 Mac mini。

## 適合誰

- 對 AI 自動化有興趣的人
- 願意在 terminal 執行命令的人
- 能承受一定技術風險的人
- 願意投入時間學習和設定的人

## 使用前須知

1. **成本可能很高** — 見 [[AI 工具的成本考量]]
2. **安全風險** — 見 [[AI Agent 的安全風險]]
3. **建議隔離環境** — 見 [[本地運行 vs 雲端運行 AI Agent#隔離環境策略]]

## 連結

- 上層：[[Clawdbot MOC]]
- 相關：[[Clawdbot 與 Claude Code 的差異]]、[[Clawdbot 設定指南]]
- 風險：[[AI Agent 的安全風險]]、[[AI 工具的成本考量]]

## 參考

- 官網：https://clawd.bot/
- GitHub：https://github.com/clawdbot/clawdbot
- [[YouTube - Clawdbot Explained In 5 mins]]
