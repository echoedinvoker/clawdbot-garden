---
id: 202601270831
title: "Agent Skills 模式"
created: 2025-01-27
updated: 2025-01-27
tags: [topic/ai-agent, topic/architecture, topic/software-design, status/seedling]
aliases: [Agent Skills Pattern, Agent 能力模組化]
---

# Agent Skills 模式

Agent Skills 模式是一種**給 AI Agent 專業化能力的架構設計**。與其讓 Agent 嘗試處理所有任務，不如將特定領域的能力封裝成獨立的「Skill」模組，Agent 可以按需載入和使用。

**核心概念：**
- 每個 Skill 是一個**獨立模組**，專注於特定任務
- Agent 可以**動態載入** Skills
- Skills 可以**獨立更新**，不影響 Agent 核心
- 社群可以**共享和複用** Skills

**Clawdbot 的 Skill 範例：**
- `camsnap` — 攝影機存取
- `openai-whisper` — 語音轉文字
- `nano-pdf` — PDF 處理
- `peekaboo` — 螢幕截圖
- `things-mac` — Things 3 待辦事項整合

## 為什麼重要

這種模式解決了 AI Agent 的**能力擴展問題**：

1. **避免 Context 膨脹**：Agent 不需要永遠載入所有能力的說明
2. **專業化**：每個 Skill 可以針對特定任務深度優化
3. **可維護性**：更新單一 Skill 不需要重新部署整個 Agent
4. **生態系統**：社群可以貢獻和分享 Skills（如 ClawdHub）

這類似於軟體設計中的 **Plugin 架構**或**微服務**概念，但應用在 AI Agent 的能力管理上。

## 連結

- 上層：Clawdbot MOC、[[Claude Code MOC]]
- 相關：Claude Code Skills 概念、Skill 檔案結構與語法、模組化能力擴展、按需載入的 Context 管理
- 來源：[[YouTube - Intro to Clawdbot by Kevin Kerns]]

## 參考

- Clawdbot Skills 可透過 `clawdhub` CLI 搜尋和安裝
- Agent 也可以自己撰寫新的 Skill 並加入系統
