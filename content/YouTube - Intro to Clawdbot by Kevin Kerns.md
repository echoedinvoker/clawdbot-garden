---
id: 202601270816
title: "Intro to Clawdbot by Kevin Kerns"
created: 2025-01-27
updated: 2025-01-27
tags: [source/video, topic/ai-agent, topic/automation, topic/clawdbot, status/seedling]
author: "Kevin Kerns"
source_url: "https://www.youtube.com/watch?v=PrWZe0VmnGg"
---

# Intro to Clawdbot by Kevin Kerns

## 摘要

Clawdbot 是一個讓 AI coding agent 擁有整台電腦存取權的工具，實現 **24/7 AI 員工**的概念。最大特點是可透過 iMessage、Discord、WhatsApp 等通訊平台遠端控制 agent，不需要在電腦前就能執行各種任務。

## 重點筆記

### 為什麼 Clawdbot 令人興奮 (1:28-2:14)

- **任何任務都能執行**：結合 Claude Code 的能力
- **本地運行**：在自己的電腦上執行，保持穩定 IP 和 session
- **遠端操控**：透過手機訊息就能指揮 agent 工作
- 作者形容：「我可以在高爾夫球場上邊打球邊建立 apps 和 agents」

### 六大核心功能 (2:17-7:07)

![[clawdbot-6-features.png]]

#### 1. 內建 Computer Use 工具 (Playwright)
- **Chrome DevTools** + **Playwright MCP**
- 可讓 agent 開啟瀏覽器執行任務
- **重點：可保存 session cookies**
  - 例：給 agent 你的 LinkedIn 登入狀態
  - Agent 就能代你發文、留言、發訊息

#### 2. 本地運行的優勢 (Mac Mini)
- **IP 穩定性**：VPS 的 IP 會變動，容易被平台偵測
- **Session Cookie 持久**：登入狀態可長期保持
- 「只要在 prompt 中登入一次，agent 就能隨時存取」

#### 3. MacOS 完整存取 (Claude Code + GitHub)
- Terminal、Notes、Notification triggers
- **可設定每日提醒**（通知、簡訊、電話）
- GPU/CPU/RAM 完整運算能力
- 存取所有本地檔案（影片、音訊、圖片）

#### 4. 遠端 Vibe Coding
- 整合 **GitHub repositories**
- 可透過訊息指示 agent 拉取 repo、修改程式碼
- 也能讓 agent 自己寫新 skill 並加入系統

#### 5. Cron Jobs 排程
- 類似 n8n 的自動化排程功能
- 工作流程測試成功後，可設定**定時自動執行**
- 完全透過訊息對話設定，不需碰電腦

#### 6. Skills 系統
- 給 agent **專業化的工作技能**
- 可從其他 repo 引入現有 skills
- 打造「真正自主的 AI 員工」

---

### iMessage Demo 精華 (7:07-10:47)

作者展示了驚人的對話流程：

#### GitHub 整合流程
![[clawdbot-github-auth.png]]

1. Agent 提供 device code：`036D-6199`
2. 使用者前往 github.com/login/device 輸入
3. 授權後 agent 自動完成連接

#### Supabase 自動設定
![[clawdbot-imessage-supabase.png]]

Agent 完全自動化完成：
- 建立 Supabase 帳號
- 處理 Gmail 2FA 驗證
- 建立 Organization 和 Project
- 回傳完整 credentials：
  - Email / Password
  - Organization: Zeus Workflows
  - Project: linkedin-leads
  - Publishable API Key
  - Database Password

> 💡 關鍵洞察：整個流程都是透過 iMessage 對話完成，使用者完全不需要在電腦前。

---

### 設定建議 (10:47-11:46)

#### 必要準備
1. **獨立 Apple ID**
   - 新建 email
   - 新電話號碼（推薦 **TextNow** 取得免費號碼）

2. **獨立電腦**（強烈建議）
   - **不要用個人電腦**：agent 會存取 iMessage、Gmail 等私人資料
   - 避免意外發送訊息、email，或被駭客利用
   - 作者推薦：**Mac Mini**

---

### 安裝步驟 (11:46-16:00)

#### 官方文件與命令
![[clawdbot-install-docs.png]]

**Quick Install (macOS/Linux):**
```bash
curl -fsSL https://clawd.bot/install.sh | bash
```

**Windows (PowerShell):**
```powershell
iwr -useb https://clawd.bot/install.ps1 | iex
```

**System Requirements:**
- Node >= 22
- macOS, Linux, or Windows via WSL2

#### 設定步驟
1. 執行 curl 安裝命令
2. 設定 AI Provider（作者用 Claude Opus 4.5）
3. 執行 `claude setup-token` 取得 OAuth token
4. 選擇通訊平台（Telegram/WhatsApp/Discord/iMessage）
5. **系統設定**：給 Cursor 和 Terminal「完整磁碟存取權限」

---

### Skills 設定 (15:00)

![[clawdbot-skills-setup.png]]

#### 內建 Skills（可選安裝）
從截圖可見的 skills 列表：
- `camsnap` - 攝影機存取
- `clawdhub` - Skills hub
- `eightctl` - Eight Sleep pods 控制
- `goplaces` - Google Places
- `mcporter` - MCP 工具
- `model-usage` - 模型使用統計
- `nano-pdf` - PDF 處理
- `obsidian` - Obsidian 整合
- `openai-whisper` - 語音轉文字
- `openhue` - Philips Hue 控制
- `oracle` - Oracle 工具
- `ordercli` - 訂單管理
- `peekaboo` - 螢幕截圖
- `sag` - ElevenLabs TTS
- `songsee` - 音樂辨識
- `sonoscli` - Sonos 控制
- `summarize` - 摘要工具
- `things-mac` - Things 3 整合
- `wacli` - WhatsApp CLI

---

### Hooks 系統 (15:55)

![[clawdbot-hooks-setup.png]]

#### 可用 Hooks
- `boot-md` - 啟動時執行
- `command-logger` - 記錄所有執行的命令（audit log）
- `session-memory` - 保存 session context 到 memory

> **Command Logger**：任何時候 agent 執行命令，都會記錄到 audit file，可供事後審查
> 
> **Session Memory**：當 agent 解決問題後，會記住解決方案，下次不會重蹈覆轍

---

### Clawdbot Gateway 介面 (16:45-17:15)

![[clawdbot-gateway-dashboard.png]]

Web-based 操作介面，左側選單包含：

**Chat**
- Chat - 直接對話

**Control**
- Overview - 總覽
- Channels - 頻道管理
- Instances - 實例
- Sessions - 會話
- Cron Jobs - 排程任務

**Agent**
- Skills - 技能管理
- Nodes - 節點管理

**Settings**
- Config - 設定
- Debug - 除錯
- Logs - 日誌

**Resources**
- Docs - 文件

> 作者預測：這類平台在 2026 會取代 n8n 成為主流自動化工具

---

## 我的想法

這個影片讓我更了解 Clawdbot 的完整面貌。幾個關鍵洞察：

1. **Computer Use + 通訊平台 = 真正的遠端 AI 員工**
   - 不只是 chatbot，是能實際操作電腦的 agent
   - Session cookies 的保存解決了自動化登入的大問題

2. **本地運行是關鍵**
   - IP 穩定性對於社群平台自動化非常重要
   - 這也是為什麼需要獨立的 Mac Mini

3. **Skills 系統的擴展性**
   - 可以把 n8n 的 workflow 概念遷移過來
   - 但更強大的是 agent 可以自己寫新 skill

4. **安全考量**
   - 一定要用獨立電腦和帳號
   - Hooks 的 audit log 很重要

## 衍生的永久筆記

- [[Session Cookie 在 Web 自動化的角色]]
- [[本地運行 vs 雲端運行 AI Agent]]
- [[通訊平台作為 AI Agent 介面]]
- [[Agent Skills 模式]]
- [[Command Audit Log 的重要性]]

## 原始連結

- YouTube: https://www.youtube.com/watch?v=PrWZe0VmnGg
- Clawdbot 官方文件: https://docs.clawd.bot
- Clawdbot 安裝頁面: https://docs.clawd.bot/install
