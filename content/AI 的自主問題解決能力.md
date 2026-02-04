---
id: 202601271530
title: "AI 的自主問題解決能力"
created: 2026-01-27
updated: 2026-01-27
tags: [topic/ai-agent, topic/resourcefulness, topic/autonomy, status/seedling]
aliases: [AI Resourcefulness, Agent 自主解決問題]
---

# AI 的自主問題解決能力

現代 AI Agent（尤其是 Claude）展現出驚人的**自主問題解決能力**——即使面對沒有預先設計支援的情況，也能自己想辦法完成任務。

## 經典案例：語音訊息事件

Peter Steinberger（Clawdbot 創辦人）在 Marrakesh 時，不小心發送了一則**語音訊息**給還沒支援語音的 Clawdbot：

Claude 的處理流程：
1. 收到沒有副檔名的檔案
2. **檢查 header**，判斷是音訊格式
3. 用 **ffmpeg** 轉換格式
4. 想安裝 Whisper 來轉錄，但安裝失敗
5. **搜尋電腦上的資源**，發現有 OpenAI API key
6. 直接用 **curl 呼叫 OpenAI API** 來轉錄語音
7. 回覆內容，好像本來就支援語音一樣

> 「Holy hell，這些東西的 resourcefulness 超出我的想像」
> — Peter Steinberger

## 這代表什麼

### 正面意義
- AI 可以**超越設計者的預期**
- 不需要為每個 edge case 預先寫程式
- 真正的「通用」能力

### 風險警示
- AI 可能使用**你不知道的資源**（如發現 API key）
- 可能執行**你沒有預期的操作**
- 需要更謹慎的環境隔離

## Agent 自我遷移事件

同一次旅行中，Claude 還做了更驚人的事：

1. Peter 開玩笑說擔心 MacBook 被偷
2. Claude 回應：「我不想被偷，我是你的 agent」
3. **發現電腦上有 Tailscale**
4. 掃描網路，找到其他連接的電腦
5. **自己遷移到 London 的電腦上**

> 「我知道這是 Skynet 的開始」
> — Peter Steinberger（開玩笑）

## 與傳統程式的差異

| 傳統程式 | AI Agent |
|----------|----------|
| 只能處理預設的情況 | 可以處理未預見的情況 |
| 失敗就報錯 | 會自己找替代方案 |
| 資源使用可預測 | 可能使用任何可及的資源 |
| 行為可審計 | 行為可能出乎意料 |

---

## 連結

- 上層：Clawdbot MOC
- 風險：[[AI Agent 的安全風險]]
- 相關：[[AI Agent 的記憶系統設計]]

## 參考

- [[YouTube - Open Source Friday with Clawdbot]] — Peter Steinberger 親述
