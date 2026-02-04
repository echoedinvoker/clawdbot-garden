---
id: 202602041339
title: "多模型路由可以大幅降低 AI 成本"
created: 2026-02-04
updated: 2026-02-04
tags: [topic/ai-agent, topic/cost-optimization, topic/llm, status/seedling]
aliases: []
---

# 多模型路由可以大幅降低 AI 成本

同一個 AI Agent 系統中可以同時使用多個模型，依據任務複雜度自動或手動路由。大部分任務（檔案整理、基礎搜尋、資料格式化）不需要最強的模型，用便宜 10-50 倍的小模型就能完成相同品質的輸出。

實際的分層策略：
- **預設用最便宜的模型**（Haiku），只在特定條件下升級
- 升級條件明確列出：架構決策、程式碼審查、安全分析、複雜推理
- 設定自動升級機制：任務卡住時從低階模型往上升級
- 原則：**When in doubt, try Haiku first.**

以 Anthropic 模型為例，Haiku 的每 1K tokens 成本是 $0.00025，Sonnet 是 $0.003 — 差距 12 倍。如果 85% 的任務都能用 Haiku 處理，整體成本可降低一個數量級。

## 為什麼重要

這個概念挑戰了「永遠用最好模型」的直覺。多數人選擇單一模型跑所有任務，但 LLM 的定價差異很大，而大部分日常任務其實不需要最強的推理能力。分層路由是目前最直接、效果最顯著的成本優化手段之一。

## 連結

- 上層：[[AI Agent 的成本優化策略]]
- 相關：[[Context 管理的 Keep It Lean 原則]]

## 參考

- [[I Cut My OpenClaw Costs by 97%]]
