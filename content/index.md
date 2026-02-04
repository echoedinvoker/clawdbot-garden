---
id: 202601271357
title: "Clawdbot MOC"
created: 2026-01-27
updated: 2026-01-27
tags: [topic/clawdbot, topic/ai-assistant, type/moc]
aliases: []
---

# Clawdbot MOC

Clawdbot 是開源的個人 AI 助理，被稱為「Siri 應該成為的樣子」。可在自己的設備上運行，整合多種通訊平台，具備持久記憶和主動提醒功能。

## 核心概念

- [[Clawdbot]] - 什麼是 Clawdbot、架構與安裝
- [[本地運行 vs 雲端運行 AI Agent]] - 部署環境選擇與隔離策略
- [[通訊平台作為 AI Agent 介面]] - 透過 iMessage/Discord/WhatsApp 控制 Agent
- [[Agent Skills 模式]] - 模組化能力擴展的設計
- [[AI Agent 的記憶系統設計]] - 跨對話記憶與主動式 AI 的概念
- [[開源 AI Agent 的優勢]] - 隱私、控制權、可審計性

## 主題分類

### 比較與選擇

- [[Clawdbot 與 Claude Code 的差異]] - 兩者的使用場景和混用策略

### 設定與操作

- [[Clawdbot 設定指南]] - 常用指令、TTS 語音、Telegram 配對
- [[Session Cookie 在 Web 自動化的角色]] - 讓 Agent 保持登入狀態的關鍵
- Gemini API 免費圖片生成設定 - Nano Banana Pro skill 安裝與 Free tier 配額

### 自動化與主動式 AI

- [[Heartbeat 機制讓 Agent 保持待命]] - 定期喚醒檢查任務
- [[AI Morning Brief 模式]] - 睡醒就有整理好的情報
- [[競爭情報自動化]] - 自動監控競爭對手動態

### 安全與風險

- [[AI Agent 的安全風險]] - Non-deterministic 行為、意外行動、缺乏 guardrails
- [[AI 工具的成本考量]] - Token 消耗、cron job 成本、控制策略
- [[AI Agent 的成本優化策略]] - 四層優化：context 瘦身、模型路由、本地 LLM、預算控制
- [[多模型路由可以大幅降低 AI 成本]] - Haiku/Sonnet/Opus 分層，預設用最便宜的
- [[Context 管理的 Keep It Lean 原則]] - context 每一行都是對每次請求的永久加稅
- [[AI 的自主問題解決能力]] - AI 的 resourcefulness 與風險（語音訊息事件、自我遷移）
- [[Command Audit Log 的重要性]] - 追蹤 Agent 執行了什麼

### 人機互動

- [[為 AI 命名的心理效果]] - 命名如何改變互動體驗

### 疑難排解

- [[Node.js fetch IPv6 連線問題排查]] - 當 curl 可以但 Node.js 失敗時

## 文獻筆記

- [[YouTube - Intro to Clawdbot by Kevin Kerns]] - Kevin Kerns 的 Clawdbot 入門教學（技術設定）
- [[YouTube - Clawdbot 48小時使用心得]] - 使用體驗分享、Morning Brief 功能展示
- YouTube - Clawdbot Explained In 5 mins - 快速介紹 Clawdbot（澄清誤解、風險與成本）
- [[YouTube - I Played with Clawdbot all Weekend]] - 深度實戰（Google Drive 自動化、本地模型、成本數據 $130/天）
- [[YouTube - Open Source Friday with Clawdbot]] - **Peter Steinberger 訪談**（起源故事、AI 自主遷移事件）
- [[YouTube - ClawdBot is the most powerful AI tool]] - Henry 案例（命名、Kanban、MiniMax $10/月）
- [[I Cut My OpenClaw Costs by 97%]] - Token 優化實戰（多模型路由、Ollama 心跳、session 瘦身）

## 待探索

- Clawdbot Skills 開發
- 自訂人格與 prompt
- Clawdbot + Home Assistant 整合
- 語音輸入（Whisper）設定

## 相關 MOC

- [[Claude Code MOC]]
- AI 工具
