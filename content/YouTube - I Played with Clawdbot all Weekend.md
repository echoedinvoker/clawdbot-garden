---
id: 202601271500
title: "YouTube - I Played with Clawdbot all Weekend"
created: 2026-01-27
updated: 2026-01-27
tags: [type/literature, source/youtube, topic/clawdbot, topic/ai-agent]
aliases: [Clawdbot Weekend Review]
---

# YouTube - I Played with Clawdbot all Weekend - it's insane

**來源：** YouTube 影片
**作者：** Matt（Forward Future）
**連結：** https://www.youtube.com/watch?v=MUDvwqJWWIw
**觀看日期：** 2026-01-27
**長度：** 約 21 分鐘

---

## 📝 摘要

作者 Matt 花了整個週末深度使用 Clawdbot，分享了實際使用案例、設定技巧、成本數據，以及遇到的問題。這是目前看到最深入的 Clawdbot 實戰分享。

---

## 🎯 關鍵要點

### 1. 開場：Clawdbot 是 Siri 應該成為的樣子（0:00-0:30）
![[weekend_01_intro.jpg]]

- **開源、本地運行、基本上什麼都能做**
- Clawdbot 本身就幫忙準備這個影片的資料
- 連接了 **Grok** 來取得即時 Twitter 資訊

### 2. Clawdbot 幫忙做研究（0:30-1:00）
![[weekend_02_research_help.jpg]]

- 用 Clawdbot 製作影片大綱
- 它知道作者用 Obsidian、有 hourly cron job
- 自動拉取特定 tweets、顯示觀看數
- 全部 **程式化地加到 ASA card**

### 3. 四大優勢（1:00-2:00）
![[weekend_03_four_advantages.jpg]]

1. **完全開源 + 本地運行** — 可連接 Gemini、OpenAI、本地模型，混合搭配
2. **持久記憶** — 學習你的偏好、不喜歡什麼、常做的任務
3. **非常主動** — 可設定自動檢查 email、發現緊急郵件就通知並草擬回覆
4. **完整電腦存取** — 可以寫程式、執行程式、迭代修改

### 4. Soul.md 人格設定（2:30-3:10）
![[weekend_04_soul_md.jpg]]

預設人格特質：
- Be genuinely helpful, not performatively helpful
- Have opinions
- Be resourceful before asking
- Earn trust through competence
- Set some boundaries

**完全可自訂** — 想要什麼人格都可以

### 5. 為什麼大家買 Mac Mini（3:30-4:00）
![[weekend_05_mac_mini.jpg]]

- 想要一個 **隔離環境** 來安裝 Clawdbot
- 可以放心給它完整系統存取，不用擔心影響主機
- 作者選擇直接裝在主機上，因為反正都要給它憑證

> 「但有個 Mac Mini 讓 Clawdbot 住在裡面，這想法很酷」

### 6. ClawdHub Skills 市集（5:00-6:00）
![[weekend_06_clawdhub.jpg]]

已有 **50+ 原生整合**，社群持續建立新 skills：
- Self-improving agent（自我改進）
- Gogg（Google Workspace：Gmail、Calendar、Drive）
- Bird（Twitter）
- Obsidian
- Nano Banana Pro
- Brave Search
- Home Assistant

> 「給 Clawdbot 越多工具和 skills，它就越強」

### 7. 實戰案例：Google Drive 上傳（6:30-8:30）
![[weekend_07_gdrive_task.jpg]]

**任務**：比對本地影片檔和 Google Drive，找出哪些還沒上傳

過程：
1. Clawdbot 執行比對，發現 **212 個檔案未上傳**
2. 遇到 Google API rate limit（每日 750GB 上限）
3. Rate limit 解除後，自動上傳、更新清單
4. 全程可以遠端透過 Telegram 操作

### 8. Cron Job 設定：Email 檢查（9:00-10:30）
![[weekend_08_cron_email.jpg]]

設定：「每 5 分鐘檢查 email，找緊急郵件，摘要並草擬回覆」

特點：
- Clawdbot **自己決定**什麼是「緊急」
- 測試時主動說「這不緊急，是 cold outreach，不需要回覆」
- **自我改進**：更新 cron job 來過濾掉 pitches

### 9. 本地模型整合（11:00-13:00）
![[weekend_09_local_model.jpg]]

- 使用 **LM Studio** 跑本地模型
- 原本用 GLM4（有內建思考，較慢）
- **透過 Telegram 讓 Clawdbot 自己下載更好的模型**（Qwen 3 MoE）
- 作者在餐廳遠端操作，Clawdbot 自己處理下載

**模型鏈**：Opus 4.5 → Haiku → Qwen 3（本地）

### 10. Twitter 自動回覆（13:00-14:00）
![[weekend_10_twitter_reply.jpg]]

- 設定：每幾分鐘抓取某篇貼文的回覆
- 找出還沒回覆的，草擬回覆，等待確認
- 每則回覆都標註 **「Drafted and sent with Claude」**

### 11. Memory 檔案展示（14:30-16:00）
![[weekend_11_memory_file.jpg]]

Clawdbot 記住的事：
- 寫作時用 humanizer skill
- 使用 Superhuman 處理 email
- 發文時前綴 "from Claude"
- 早起型（7:00 起床）
- 老婆的日曆也會出現在他的日曆上（需要判斷）
- Email 優先級分類（會議 > 合作夥伴 > 贊助商 > newsletter）

### 12. 問題與風險（16:30-18:30）
![[weekend_12_issues.jpg]]

**安全風險**：
- 給非確定性系統存取重要服務（Gmail、Calendar、Drive）
- 可能做出不可逆的錯誤
- **目前適合 power users**

**Rough edges**：
- 專案才 2 個月大，solo developer
- 有時會犯莫名其妙的錯

**記憶壓縮問題**：
- Context window 滿了需要壓縮記憶
- 壓縮會丟失細節
- **解法**：明確告訴它「把這個寫下來」

**Crashes**：
- 遇到 tool call loop 卡住
- 必須回家重啟才能解決

### 13. 成本警告（19:00-20:00）
![[weekend_13_cost.jpg]]

**實際數據**：
- 昨天：**70M tokens，$130**
- 今天早上 9:30：**25M tokens，$32**

> 「Holy crap, it is very expensive.」

**原因**：大部分任務它選擇用 **Opus 4.5**

**解法**：更多使用本地模型

### 14. 總結（20:00-21:00）
![[weekend_14_conclusion.jpg]]

- **推薦試試看**，但要小心
- 如果擔心，可以先裝在 VPS 上
- 這很可能是 **AI 助手的未來**
- 缺少的一塊：**語音硬體**（想要像 Siri 一樣說話互動）
- TTS 支援已有，但都透過聊天 app

---

## 🔗 相關永久筆記

- [[Clawdbot]] — 基本介紹
- [[AI Agent 的記憶系統設計]] — 持久記憶與主動式行為
- [[AI 工具的成本考量]] — Token 消耗（本影片有實際數據）
- [[AI Agent 的安全風險]] — 給非確定性系統存取權限的風險
- [[本地運行 vs 雲端運行 AI Agent]] — Mac Mini 隔離環境
- [[Clawdbot 設定指南]] — Cron job、TTS 設定
- [[Clawdbot 與 Claude Code 的差異]] — Claude Code wrapped with more functionality

---

## 💭 我的想法

這是目前看到最實用的 Clawdbot 深度分享。幾個重點：

1. **成本數據很珍貴** — 一天 $130 是很重要的參考，需要認真規劃模型使用策略
2. **本地模型整合** — 透過 Telegram 遠端讓 Clawdbot 下載新模型，這太酷了
3. **Google Drive 案例** — 很實用的自動化場景
4. **記憶壓縮** — 這是所有 AI Agent 都會遇到的問題，需要主動幫助它記住重要的事

這影片讓我想嘗試：
- 設定 email 檢查 cron job
- 嘗試本地模型降低成本
- 更主動地幫 Clawdbot 整理 memory
