---
id: 202507101700
title: "AI Agent 的記憶系統設計"
created: 2025-07-10
updated: 2026-01-27
tags: [topic/ai-agent, topic/memory, topic/architecture, status/seedling]
aliases: [Agent Memory System, AI 記憶架構, 主動式 AI 助手]
---

# AI Agent 的記憶系統設計

AI Agent 的記憶系統讓它能夠**跨對話保留資訊**，從「每次都是陌生人」變成「真正認識你的助理」。這是 AI 從工具進化為「員工」的關鍵轉折點。

## 記憶系統的核心機制

1. **自動擷取**：每次對話結束後，系統提取重要資訊存入長期記憶
2. **情境回憶**：新對話開始時，載入相關的歷史記憶
3. **主動應用**：Agent 根據記憶主動採取行動，而非被動等待指令

**實際案例（Clawdbot）：**
> 使用者在首次對話提到自己有 newsletter，固定某天發送。2 天後，AI 主動幫他寫了幾篇 newsletter 草稿。

這展示了記憶系統的三層價值：
- **記得**：知道使用者有 newsletter
- **理解**：知道發送的時間規律
- **行動**：在適當時機主動準備內容

---

## 被動式 vs 主動式 AI

傳統的 AI 助手是**被動的**：你問問題，它回答。主動式 AI 助手則更進一步——它會**持續觀察、學習，並在它認為適當的時候主動採取行動**。

| 被動式 AI | 主動式 AI |
|-----------|-----------|
| 等待指令 | 主動尋找可做的事 |
| 一問一答 | 持續監控和行動 |
| 短期記憶 | 長期學習你的偏好 |
| 人類發起 | AI 也可以發起 |
| 工具 | 夥伴 |

### 主動式行為範例

1. **趨勢監控** — 監看 Twitter/X 上你有興趣的話題，發現有趣的就主動報告
2. **排程任務** — 定時檢查 email、日曆、新聞
3. **情境建議** — 根據你的習慣主動提供建議
4. **自動化工作流** — 偵測到觸發條件就自動執行任務

### 實現機制

- **Cron Jobs / Heartbeats** — 定時喚醒 AI 檢查（見 Heartbeat 機制讓 Agent 保持待命）
- **記憶系統** — 儲存和回憶用戶偏好
- **事件驅動** — 監聽特定事件並響應

---

## 注意事項

- 主動式 AI 會**持續消耗 tokens**（見 AI 工具的成本考量）
- 可能會做出**意外的行為**（見 [[AI Agent 的安全風險]]）
- 需要明確設定邊界和權限

### 記憶壓縮問題

當對話達到 context window 上限時，系統需要**壓縮記憶**，這會導致細節丟失：

- Agent 可能忘記你之前告訴它的事
- 解法：**明確告訴它「把這個寫下來」**
- 重要偏好應該寫入 `MEMORY.md` 或 `tools.md`

> 「壓縮記憶時會丟失細節。解法是繼續幫助它記住那些事——直接告訴它，把這個明確寫下來。」
> — Matt（Forward Future）

---

## 連結

- 上層：Clawdbot MOC
- 相關：Heartbeat 機制讓 Agent 保持待命、AI Morning Brief 模式
- 風險：[[AI Agent 的安全風險]]、AI 工具的成本考量
- 對比：RAG 檢索增強生成 — 技術層面的記憶實現方式

## 參考

- YouTube - Clawdbot 48小時使用心得 — Newsletter 主動撰寫案例
- YouTube - Clawdbot Explained In 5 mins — 主動式 AI 的風險與優勢
- YouTube - I Played with Clawdbot all Weekend — Memory 檔案展示、記憶壓縮問題
- Clawdbot 的記憶檔案：`MEMORY.md` + `memory/*.md`
