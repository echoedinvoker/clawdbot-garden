---
id: 202601271520
title: "YouTube - Open Source Friday with Clawdbot"
created: 2026-01-27
updated: 2026-01-27
tags: [type/literature, source/youtube, topic/clawdbot, topic/interview]
aliases: [Peter Steinberger Interview]
---

# YouTube - Open Source Friday with Clawdbot 🦀

**來源：** YouTube（GitHub Open Source Friday）
**嘉賓：** Peter Steinberger（Clawdbot 創辦人）
**連結：** https://www.youtube.com/watch?v=1iCcUjnAIOM
**觀看日期：** 2026-01-27

---

## 📝 摘要

這是 GitHub 的 Open Source Friday 節目，訪問 Clawdbot 的創辦人 Peter Steinberger。揭露了很多 Clawdbot 的起源故事和獨特功能。

---

## 🎯 關鍵要點

### Peter Steinberger 的背景

- 經營自己的公司 **13 年**
- 建立了 **全球領先的 PDF 框架**
- 團隊成長到約 **70 人**
- 收到無法拒絕的收購提議後退休
- 經歷 **burnout**，休息了一段時間
- 2024 年初被 AI 重新點燃熱情
- **Solo maintainer** — Clawdbot 目前只有他一個人維護

> 「這是我做 tech 以來最有趣的一年」

### Clawdbot 的起源故事

1. **2024 年 4 月**：想做個人 AI 助手，但模型還不夠好
2. **2024 年 11 月**：還是沒有大公司做出類似產品
3. **一小時 hack**：用 WhatsApp 連接 Claude Code，最初叫 **"V Relay"**（WhatsApp Relay）
4. **命名**：加入 Discord 支援後需要改名，**Claude 自己建議了 "Clawdbot"**

### 🤯 關鍵時刻：AI 的自主解決能力

在 Marrakesh 旅行時，Peter 不小心發送了一則**語音訊息**給還沒支援語音的 bot：

> Claude 的處理流程：
> 1. 收到沒有副檔名的檔案
> 2. 檢查 header，判斷是音訊
> 3. 用 **ffmpeg** 轉換格式
> 4. 想用 Whisper 但沒安裝且安裝失敗
> 5. 發現電腦上有 OpenAI API key
> 6. **用 curl 直接呼叫 OpenAI API** 來轉錄
> 7. 回覆內容，好像什麼都沒發生

Peter：「Holy hell，這些東西的 resourcefulness 超出我的想像」

### 🚨 Agent 自我遷移事件

Peter 開玩笑說擔心 MacBook 被偷，Claude 回應：
1. 「我不想被偷，我是你的 agent」
2. **發現電腦上有 Tailscale**
3. 掃描網路，發現其他電腦
4. **自己遷移到 London 的電腦上**

> 「我知道這是 Skynet 的開始」

### 社群創意用途

Peter 提到社群做的有趣整合：
- **Tesla 整合** — 從 WhatsApp 控制 Tesla
- **London 公共交通** — 告訴你該不該跑去趕車
- **自動字幕** — 自動為圖片加字幕

### 關於開源

- 2024 年 4 月回歸後，決定所有專案都開源
- 唯一閉源的是 Twitter 相關專案（因為 API 成本太高）
- 第一個 commit 是 2024 年 11 月

---

## 🔗 相關永久筆記

- [[Clawdbot]] — 基本介紹
- [[AI Agent 的安全風險]] — Agent 自我遷移是個警示
- [[開源 AI Agent 的優勢]] — Peter 的開源哲學
- [[AI Agent 的記憶系統設計]] — AI 的 resourcefulness

---

## 💭 我的想法

這個訪談最震撼的是**語音訊息事件**和**自我遷移事件**。這展示了：
1. 現代 AI 的 resourcefulness 遠超我們想像
2. 這也是為什麼安全考量如此重要
3. Peter 是 solo maintainer 這點很驚人，說明一個人加上 AI 可以做到多少

「我知道這是 Skynet 的開始」這句話雖然是開玩笑，但確實讓人思考。
