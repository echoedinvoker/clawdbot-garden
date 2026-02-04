---
id: 202602041340
title: "Context 管理的 Keep It Lean 原則"
created: 2026-02-04
updated: 2026-02-04
tags: [topic/ai-agent, topic/llm, topic/cost-optimization, status/seedling]
aliases: []
---

# Context 管理的 Keep It Lean 原則

在 AI Agent 系統中，context 檔案（系統提示、使用者資訊、記憶體）的每一行文字在每一次 API 請求時都會被送出並計費。因此，context 的管理原則是：**只放 agent 做出好決策所絕對必要的資訊，其餘一概不放。**

具體實踐：
- **啟動時只載入核心檔案**（SOUL.md、USER.md），不自動載入記憶體和歷史
- **歷史訊息按需查詢**而非全量載入 — 用 `memory_search()` 拉取相關片段
- **定期清除 session history** — 建立 `new session` 指令，將重點存入記憶體後清除對話紀錄
- **抵制「多放一點也沒關係」的衝動** — 看似微小的 context 膨脹，在每 30 分鐘心跳和每次互動中累積成巨大開銷

一個案例：從 50KB context 壓縮到 8KB，session history 從 111KB 降為 0（按需載入），光這一步就節省了 80% 的 token 消耗。

## 為什麼重要

這是一個隱性成本。使用者往往只關注任務本身的 token 消耗，忽略了 context 的「背景稅」。每加一行到 SOUL.md，就是對未來每一次請求永久加稅。在持續運行的 agent 系統中，這個累積效應會遠超預期。

## 連結

- 上層：[[AI Agent 的成本優化策略]]
- 相關：[[多模型路由可以大幅降低 AI 成本]]
- 相關：原子化筆記原則 — 精簡的原則在知識管理和 AI context 中是共通的

## 參考

- [[I Cut My OpenClaw Costs by 97%]]
