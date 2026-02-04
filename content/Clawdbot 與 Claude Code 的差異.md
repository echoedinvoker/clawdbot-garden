---
id: 202601270351
title: "Clawdbot 與 Claude Code 的差異"
created: 2026-01-27
updated: 2026-01-27
tags: [topic/ai, topic/productivity, topic/tools, status/seedling]
aliases: [Clawdbot vs Claude Code, AI 助手比較]
---

# Clawdbot 與 Claude Code 的差異

Clawdbot 和 Claude Code 底層都是 Claude，但使用場景和特性不同。理解差異有助於選擇正確的工具。

## 核心差異

| 面向 | Clawdbot | Claude Code |
|------|----------|-------------|
| **介面** | 訊息平台（Slack、Telegram 等） | 終端機 |
| **記憶** | 持久記憶（跨 session） | Session 內記憶（可用 `--resume`） |
| **人格** | 可自訂（如「蟹老闆」） | 中性 |
| **上下文** | 知道你的偏好、進度、計畫 | 專注當前專案 |
| **回應速度** | 較慢（訊息傳遞延遲） | 較快（直接終端輸出） |

## 什麼時候用 Clawdbot

- **需要長期追蹤**：專案進度、習慣養成、週期性任務
- **非同步溝通**：想到什麼就傳訊息，不需要開終端
- **雜務處理**：提醒、排程、資訊查詢
- **累積偏好**：告訴它一次 coding style，之後都會記得
- **跨專案 context**：知道你的多個專案和目標

## 什麼時候用 Claude Code

- **專注 coding session**：直接在終端，手感順暢
- **需要快速迭代**：修改程式碼、跑測試、再修改
- **使用 MCP 工具**：如 Playwright、Git 等整合
- **Subagent 工作流**：用 `@agent-name` 呼叫專門代理

## 最佳混用策略

```
Clawdbot（蟹老闆）          Claude Code
    │                           │
    ├─ 討論架構決策              ├─ 實作程式碼
    ├─ 記錄 coding 偏好         ├─ Debug
    ├─ 追蹤專案進度              ├─ 跑測試
    ├─ 提醒和排程               ├─ Git 操作
    └─ 閒聊、問雜問題            └─ 專注模式
```

**流程範例**：
1. 在 Clawdbot 討論專案架構和目標
2. 開 Claude Code 進入專注 coding
3. 完成後回 Clawdbot 報告進度
4. Clawdbot 更新追蹤、提醒下一步

## 讓兩邊同步的方法

- **CLAUDE.md**：在專案根目錄寫 coding 偏好，Claude Code 會讀
- **告訴 Clawdbot**：口頭說偏好，它會記在自己的記憶檔案
- **專案討論前**：請 Clawdbot 先讀專案的 CLAUDE.md

## 連結

- 上層：Clawdbot MOC、[[Claude Code MOC]]
- 相關：[[Clawdbot]]、[[Clawdbot 設定指南]]、Claude Code 與 Zettelkasten、Claude Code Subagent 機制
- 實踐：用於 預約系統作品集專案

## 參考

- 實際使用經驗整理
- Clawdbot 官方文件：https://docs.clawd.bot
