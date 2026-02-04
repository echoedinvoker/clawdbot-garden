---
id: 202507101703
title: "AI Morning Brief 模式"
created: 2025-07-10
updated: 2025-07-10
tags: [topic/ai-agent, topic/automation, topic/productivity, status/seedling]
aliases: [Morning Brief Pattern, AI 早報模式, 自動化情報彙報]
---

# AI Morning Brief 模式

AI Morning Brief 是一種**主動式資訊彙報模式**：AI Agent 在你醒來前收集、整理、分析資訊，然後以簡報形式呈現。這將 AI 從「問答工具」轉變為「情報官」。

**典型的 Morning Brief 結構：**

```
☀️ MORNING BRIEF — Sat, Jan 24
Weather: 45°F, sunny, light wind. Nice day to film outside.

🔍 COMPETITOR SCAN (7 new videos)
• Greg Isenberg — "Claude Code Clearly Explained" — 105K views in 5 days
• Matthew Berman — "Anthropic is secretly winning" — 52.7K views

📰 TRENDING NEWS
• NYT just published "Five Ways People Are Using Claude Code"
• Cursor 2.0 background agents now production-ready

✅ OVERNIGHT WORK DONE
I finished 3 tasks while you slept:
...
```

**組成要素：**
1. **環境資訊**：天氣、日程提醒
2. **監控報告**：競爭對手動態、關鍵字追蹤
3. **新聞摘要**：產業相關新聞篩選
4. **工作進度**：睡眠期間完成的任務

## 為什麼重要

這種模式體現了 AI Agent 的**主動價值**：

| 被動模式 | Morning Brief 模式 |
|----------|-------------------|
| 你問，它答 | 它主動告訴你該知道的事 |
| 你決定要查什麼 | 它幫你過濾資訊噪音 |
| 花時間收集資訊 | 醒來就有整理好的情報 |

**關鍵洞察**：這不只是「自動化」，而是**認知外包**——把「該注意什麼」的判斷也交給 AI。

## 連結

- 上層：Clawdbot MOC
- 前置：[[Heartbeat 機制讓 Agent 保持待命]] — Morning Brief 需要 Agent 持續運作
- 相關：[[AI Agent 的記憶系統設計]] — 記憶讓 Brief 個人化
- 相關：[[競爭情報自動化]] — Competitor Scan 功能
- 延伸：資訊過載與 AI 過濾

## 參考

- [[YouTube - Clawdbot 48小時使用心得]] — Morning Brief 截圖展示
- 可實現工具：Clawdbot + Cron Jobs + Custom Skills
