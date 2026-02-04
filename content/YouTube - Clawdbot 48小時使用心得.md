---
id: 202507101630
title: "Clawdbot 48小時使用心得"
created: 2025-07-10
updated: 2025-07-10
tags: [source/video, topic/ai-agent, topic/automation, topic/clawdbot, status/seedling]
author: "Unknown YouTuber"
source_url: "https://www.youtube.com/watch?v=Qkqe-uRhQJE"
---

# Clawdbot 48小時使用心得

## 摘要

一位 YouTuber 分享使用 Clawdbot 48 小時後的心得，稱其為「這輩子用過最棒的科技」，並將其形容為「Claude Co-work 本來應該要達到的樣子」。影片介紹了三大核心功能，並提到對這項技術普及後的擔憂。

## 重點筆記

### 核心定位 (0:00-0:30)

作者的評價非常高：
> 「這是我這輩子用過最棒的科技，也是目前為止 AI 最好的應用。」
> 「這就是他們想讓 Claude Co-work 達到的樣子。」

**Clawdbot 的本質**：一個 24/7 運作的 AI 員工，可以：
- 控制整台電腦
- 擁有無限記憶
- 做到任何人類能做的事

### 三大核心特點

#### 1. 完全控制電腦 (1:00-2:02)

![[clawdbot-mac-mini.png]]
*YouTuber 展示他的 Mac Mini — Clawdbot 的運行環境*

- 可以開啟瀏覽器
- 在 Google Docs 中工作
- 存取 Apple Notes
- 撰寫 Notion 文件
- 查看、發送、回覆 Email
- **完全沒有防護欄（guardrails）**：「completely unhinged」

#### 2. 無限記憶系統 (2:04-2:36)

作者稱這是「really complex memory system」：

- 每次對話都會自動保存
- 對話結束後，系統會提取重要資訊存入記憶
- **實際案例**：
  - 作者在首次對話中提到自己有 newsletter
  - 2 天後，AI 主動幫他寫了幾篇 newsletter 草稿
  - 因為 AI 記得他固定在某天發送 newsletter
  
> 💡 「每週省下數小時的工作時間，就這樣。」

#### 3. 透過通訊平台互動 (2:42-3:12)

作者將他的 Clawdbot 命名為 **Henry**，並使用貓頭鷹 logo。

**支援的通訊平台**：
- Telegram（作者主要使用）
- iMessage
- WhatsApp
- Discord
- 還有約 20 種其他選項

> 「現在我在世界任何地方，只要打開訊息 app，就能說：『Henry，請幫我做這件事...』」

### 關於 Clawdbot 的背景 (1:10-1:32)

- **開源專案**：不被大公司控制，不會被監控
- **創建者**：Peter Steinberger
  - 成功的創業家
  - 現在全心投入這個專案
- 作者特別感謝他：「把這個工具送給世界」

### 作者的擔憂 (0:44-0:50)

作者提到會在影片後段分享：
> 「我其實有點害怕，當全世界都開始使用這項技術時會發生什麼事。」

---

### 🔥 截圖補充：Morning Brief 功能

![[clawdbot-morning-brief.png]]
*Clawdbot Gateway Dashboard 展示的 Morning Brief*

從截圖中可以看到 Clawdbot 的**主動彙報功能**，這在字幕中沒有詳細提到：

#### ☀️ Morning Brief — Sat, Jan 24
- **Weather**: Mountain View — 45°F, sunny, light wind. Nice day to film outside if needed.

#### 🔍 Competitor Scan (7 new videos)
- Greg Isenberg — "Claude Code Clearly Explained" — **105K views** in 5 days
- Greg Isenberg — "Private lesson on Claude Cowork" — 32.7K views
- Matthew Berman — "Anthropic is secretly winning" — 52.7K views
- IndyDevDan — "Claude Code Feature Senior Engineers KEEP MISSING" — 37.5K views
- Chase AI — "Claude Skills are a cheat code" — 1.7K views (16h ago)

#### 📰 Trending News
- 🔥 **NYT just published** "Five Ways People Are Using Claude Code" — 15 hours ago. Vibecod mainstream media. This is a big moment for the space.
- Claude Cowork launched Jan 12
- Cursor 2.0 background agents now production-ready
- Research shows senior devs maintain stricter control vs "vibe coding"

#### ✅ Overnight Work Done
> "I finished 3 tasks while you slept:"

> 💡 **關鍵洞察**：這展示了 Clawdbot 的「AI 員工」特性——你睡覺時它在工作，早上給你簡報！

---

### Heartbeat 系統

![[clawdbot-heartbeat.png]]
*Clawdbot 的 Heartbeat 機制 — 定期檢查是否有任務需要執行*

截圖顯示 Agent (Henry) 每隔約 30 分鐘收到 heartbeat prompt：
> "Read HEARTBEAT.md if it exists (workspace context). Follow it strictly. Do not infer or repeat old chats. If nothing needs attention, reply HEARTBEAT_OK."

當沒有任務時，Agent 回覆 `HEARTBEAT_OK`。這是 Clawdbot 保持 24/7 待命的機制。

---

## 我的想法

### 截圖揭示的隱藏功能

Morning Brief 截圖展示了字幕沒提到的強大功能：

1. **Competitor Scan**：自動追蹤競爭對手的 YouTube 頻道，彙報新影片和觀看數
2. **Trending News**：追蹤產業新聞（NYT 發表 Claude Code 文章）
3. **Overnight Work**：睡覺時完成任務，早上彙報

這讓我理解為什麼作者說「每週省下數小時」——不只是回應指令，而是**主動做情報收集**。

### 與 Kevin Kerns 的影片比較

這部影片比較偏向「使用者體驗分享」，而 [[YouTube - Intro to Clawdbot by Kevin Kerns]] 則是更技術性的教學。兩者互補：

| 面向 | 這部影片 | Kevin Kerns |
|------|---------|-------------|
| 重點 | 使用體驗、生活改變 | 技術設定、功能細節 |
| 適合對象 | 想了解價值的人 | 想實際操作的人 |

### 關鍵洞察

1. **記憶系統是殺手級功能**
   - 這不只是 chatbot，而是真的「記得你」的 AI
   - Newsletter 的例子展示了主動性（proactive）的能力
   
2. **「完全沒有防護欄」的雙面性**
   - 優點：能做任何事，不受限制
   - 風險：需要獨立電腦和帳號（如 Kevin 影片強調的）

3. **命名 AI 增加互動樂趣**
   - 作者把它叫 Henry，給了 logo
   - 這種擬人化讓互動更自然

## 衍生的永久筆記

- [[AI Agent 的記憶系統設計]] ✅
- [[為 AI 命名的心理效果]] ✅
- [[開源 AI Agent 的優勢]] ✅
- [[AI Morning Brief 模式]] ✅
- [[Heartbeat 機制讓 Agent 保持待命]] ✅
- [[競爭情報自動化]] ✅

## 相關筆記

- [[YouTube - Intro to Clawdbot by Kevin Kerns]] - 更完整的技術教學

## 原始連結

- YouTube: https://www.youtube.com/watch?v=Qkqe-uRhQJE
- Clawdbot 官方: https://clawd.bot
- Peter Steinberger X: (建議追蹤)
