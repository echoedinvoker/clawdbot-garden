---
id: 202602041648
title: "Multi-Agent Orchestrator 模式"
created: 2026-02-04
updated: 2026-02-04
tags: [topic/ai-agent, topic/architecture, topic/automation, status/seedling]
aliases: [Multi-Agent Pattern, 多 Agent 協作模式, Agent Dream Team]
---

# Multi-Agent Orchestrator 模式

Multi-Agent Orchestrator 模式是一種**將複雜任務分派給多個專業化 agent 的協作架構**。一個 orchestrator agent 負責理解需求並路由任務，多個 worker agent 各自專注於特定角色。

## 架構

```
使用者（Telegram）
    ↓
Orchestrator Agent（調度者）
    ├── Builder Agent（建構者）— 寫程式碼
    ├── Reviewer Agent（審核者）— 檢查品質
    └── Deployer Agent（部署者）— 推上線
    ↓
產出（PR + QA 通過）
```

**實際案例**：使用者在 Telegram 發「我們需要一個 retry 機制」→ orchestrator 接收 → 分派給 builder 寫 code → reviewer 審核 → deployer 開 PR → **3 分鐘後完成**。

社群中有人形容：**「以前要 10-20 萬美元顧問費的工作，現在一天就能完成」**。

## 為什麼重要

這是目前看到的 AI Agent 應用**天花板**——從單一 agent 執行任務，進化到多個 agent 分工協作。

與成本優化的關聯：orchestrator 跑大模型（Opus）做決策，worker 跑小模型（Haiku/Sonnet）做執行，兼顧品質與成本（見 [[AI Agent 的成本優化策略]]）。

> "This is advanced, but it shows the ceiling of what's possible. And what's the ceiling today will be the floor tomorrow."
> — VelvetShark

## 連結

- 上層：Clawdbot MOC
- 相關：[[Agent Skills 模式]]、[[AI Agent 的記憶系統設計]]
- 成本：[[AI Agent 的成本優化策略]] — 多模型路由與 orchestrator 模式的結合
- 風險：[[AI Agent 的安全風險]] — 自主 bug 修復等行為需要謹慎設定權限

## 參考

- [[YouTube - OpenClaw use cases by VelvetShark]] — Multi-Agent Dream Team 案例
