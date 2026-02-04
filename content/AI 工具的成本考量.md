---
id: 202601271448
title: "AI 工具的成本考量"
created: 2026-01-27
updated: 2026-01-27
tags: [topic/ai-agent, topic/cost, topic/token, status/seedling]
aliases: [AI Cost Considerations, Token 成本, AI Agent 成本]
---

# AI 工具的成本考量

使用本地 AI Agent（如 Clawdbot）的成本可能**遠超預期**，因為它不只在你主動使用時消耗 tokens。

## 成本來源

### 1. 主動對話
- 你問問題、AI 回答
- 這是最明顯的成本

### 2. 排程任務（Cron Jobs）
- AI 定時醒來檢查任務
- 每次喚醒都消耗 tokens
- **即使沒有實際工作也會消耗**

### 3. 主動行為
- AI 偵測到它「應該」做某事
- 可能啟動複雜的多步驟任務
- **可能消耗數百萬 tokens**

### 4. 工具呼叫
- 每次使用 browser、搜尋、檔案操作
- 都會產生額外的 context tokens

## 實際案例

### Matt（Forward Future）的成本數據

| 日期 | Token 消耗 | 花費 |
|------|-----------|------|
| 某天完整使用 | **70M tokens** | **$130** |
| 隔天早上 9:30 | 25M tokens | $32 |

> 「Holy crap, it is very expensive.」
> — Matt

**原因**：大部分任務 Clawdbot 選擇使用 **Opus 4.5**（最貴的模型）

### 為什麼這麼貴

Agent 不只是在你問它時才工作——它會持續等待和尋找可以做的事，當它認為該做某事時，就會開始使用大量 tokens 來執行任務。

### Nick Saraev 報導的案例

> "One person spent $300 on just the last two days doing what they perceived to be fairly basic tasks."

即使是「基本任務」，兩天也可能花費 $300。（見 YouTube - Clawdbot Sucks Actually by Nick Saraev）

## 控制成本的策略

1. **設定預算警報** — API 平台通常有消費通知
2. **限制主動行為** — 減少 cron job / heartbeat 頻率
3. **選擇模型** — 較便宜的模型用於簡單任務
4. **監控用量** — 定期檢查 token 消耗（見 [[Clawdbot 設定指南]]）
5. **設定上限** — 部分 API 允許設定月度上限

## Token 成本意識

每次讓 AI「思考」都在花錢：
- 讀取長文件 = 大量 input tokens
- 複雜推理 = 大量 output tokens
- 頻繁互動 = 累積可觀

---

## 連結

- 上層：Clawdbot MOC
- 相關：[[Clawdbot]]、[[AI Agent 的記憶系統設計]]
- 風險：[[AI Agent 的安全風險]]
- 設定：[[Clawdbot 設定指南]]

## 參考

- YouTube - Clawdbot Explained In 5 mins
- [[YouTube - I Played with Clawdbot all Weekend]] — 實際成本數據：$130/天
