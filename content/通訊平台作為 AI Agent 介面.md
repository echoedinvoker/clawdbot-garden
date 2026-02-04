---
id: 202601270830
title: "通訊平台作為 AI Agent 介面"
created: 2025-01-27
updated: 2025-01-27
tags: [topic/ai-agent, topic/ux, topic/automation, status/seedling]
aliases: [Messaging as Agent Interface, 對話式 Agent 控制]
---

# 通訊平台作為 AI Agent 介面

使用 iMessage、Discord、WhatsApp、Telegram 等**通訊平台作為 AI Agent 的操作介面**，是一種強大的人機互動模式。這讓你可以在任何地方、任何時間，透過手機訊息指揮 Agent 執行任務。

**核心價值：**
- 🌍 **地點無關**：不需要在電腦前，高爾夫球場也能工作
- 📱 **介面熟悉**：不需要學習新工具，用你每天用的 App
- ⏰ **非同步操作**：發送指令後可以去做其他事
- 💬 **自然語言**：用對話的方式描述任務

## 為什麼重要

傳統的自動化工具（如 n8n、Zapier）需要你在電腦前操作網頁介面。通訊平台介面打破這個限制：

**使用情境：**
- 外出時想到一個任務，直接發訊息給 Agent
- 收到 Agent 的進度報告，用訊息回覆調整方向
- 批准或拒絕 Agent 的請求（如：是否要執行敏感操作）

**設計考量：**
- 需要處理訊息的**非同步性**（Agent 可能需要時間完成任務）
- 需要設計**確認機制**（避免誤操作）
- 需要考慮**安全性**（誰可以發訊息給 Agent）

這種模式將「AI Assistant」從桌面軟體轉變為**隨身助理**。

## 連結

- 上層：Clawdbot MOC
- 相關：[[Clawdbot 設定指南]]、[[本地運行 vs 雲端運行 AI Agent]]
- 相關：[[為 AI 命名的心理效果]] — 通訊平台 + 命名 = 更自然的互動體驗
- 來源：[[YouTube - Intro to Clawdbot by Kevin Kerns]]、[[YouTube - Clawdbot 48小時使用心得]]

## 參考

- Clawdbot 支援 iMessage、Discord、WhatsApp、Telegram、Google Chat 等約 20 種平台
- 設定 iMessage 需要獨立的 Apple ID 和電話號碼（可用 TextNow 取得免費號碼）
- 第二部影片作者主要使用 Telegram，並將 Agent 命名為「Henry」配上貓頭鷹 logo
