---
id: 202507101704
title: "Heartbeat 機制讓 Agent 保持待命"
created: 2025-07-10
updated: 2025-07-10
tags: [topic/ai-agent, topic/architecture, topic/automation, status/seedling]
aliases: [Agent Heartbeat, Heartbeat Pattern, AI 心跳機制]
---

# Heartbeat 機制讓 Agent 保持待命

Heartbeat 是一種**定期喚醒 AI Agent 檢查任務**的機制。系統每隔固定時間（如 30 分鐘）發送心跳訊號，Agent 醒來檢查是否有事需要處理，沒有就回覆 `HEARTBEAT_OK` 繼續待命。

**運作流程：**

```
[系統] → "Read HEARTBEAT.md if it exists. Follow it strictly. 
         If nothing needs attention, reply HEARTBEAT_OK."

[Agent] → 檢查 HEARTBEAT.md
        → 檢查排程任務
        → 檢查監控項目
        → 無事 → "HEARTBEAT_OK"
        → 有事 → 執行任務或發送通知
```

**為什麼不用純 Cron？**

| Cron Job | Heartbeat |
|----------|-----------|
| 精確時間觸發 | 彈性間隔 |
| 獨立執行 | 可存取對話上下文 |
| 固定任務 | 可動態檢查多項事務 |

Heartbeat 適合「不確定何時需要行動」的場景，Cron 適合「固定時間執行固定任務」。

## 為什麼重要

Heartbeat 機制解決了 AI Agent 的**「活著」問題**：

傳統 AI 是被動的——你不問，它不動。但真正的「AI 員工」應該像人類員工一樣，**即使沒人交代，也會定期檢查該做的事**。

**這讓以下場景成為可能：**
- 郵件來了，Agent 主動通知你
- 日曆事件快到了，Agent 提醒你
- 監控的指標異常，Agent 立即警報
- 睡覺時完成背景任務，早上彙報

## 連結

- 上層：Clawdbot MOC
- 相關：[[AI Morning Brief 模式]] — Heartbeat 驅動的應用
- 相關：[[AI Agent 的記憶系統設計]] — Heartbeat 時可存取記憶
- 對比：Cron Jobs 排程任務 — 精確時間 vs 彈性檢查
- 技術：HEARTBEAT.md 的設計

## 參考

- [[YouTube - Clawdbot 48小時使用心得]] — Heartbeat 截圖展示
- Clawdbot 預設心跳間隔：約 30 分鐘
- 心跳回應格式：`HEARTBEAT_OK`（表示無事待處理）
