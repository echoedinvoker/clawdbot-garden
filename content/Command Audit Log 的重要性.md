---
id: 202601270832
title: "Command Audit Log 的重要性"
created: 2025-01-27
updated: 2025-01-27
tags: [topic/ai-agent, topic/security, topic/observability, status/seedling]
aliases: [Agent Audit Trail, 命令審計日誌]
---

# Command Audit Log 的重要性

當 AI Agent 擁有執行命令的能力時，**記錄所有執行過的命令**變得至關重要。這不只是技術需求，更是建立**信任**和**可控性**的基礎。

**Audit Log 記錄什麼：**
- 執行的命令內容
- 執行時間
- 執行結果（成功/失敗）
- 觸發來源（哪個對話/任務）

## 為什麼重要

**1. 事後除錯**
當 Agent 做了意外的事情，你需要知道「它到底執行了什麼」。沒有 log，你只能猜測。

**2. 安全審計**
如果 Agent 被濫用（無論是被駭或誤操作），audit log 是追溯問題的唯一依據。

**3. 行為改進**
透過分析 log，可以發現 Agent 的低效模式或錯誤傾向，進而優化 prompt 或 skill。

**4. 建立信任**
知道「Agent 做了什麼」讓你更願意賦予它更多權限。透明度帶來信任。

**實務建議：**
- 定期檢視 audit log（至少在 Agent 執行重要任務後）
- 設定異常警報（如：執行了刪除命令）
- 保留足夠長的歷史記錄

## 連結

- 上層：Clawdbot MOC
- 相關：Session Memory 持久化、[[本地運行 vs 雲端運行 AI Agent]]
- 來源：[[YouTube - Intro to Clawdbot by Kevin Kerns]]

## 參考

- Clawdbot 的 `command-logger` hook 會記錄所有執行的命令到 audit file
- 搭配 `session-memory` hook 可以讓 Agent 記住解決方案，避免重蹈覆轍
