---
id: 202602041645
title: "OpenClaw use cases: 9 automations + 4 wild builds"
created: 2026-02-04
updated: 2026-02-04
tags: [source/video, status/seedling]
author: "VelvetShark"
source_url: "https://www.youtube.com/watch?v=52kOmSQGt_E"
---

# OpenClaw use cases: 9 automations + 4 wild builds

## 摘要

VelvetShark 整理了 OpenClaw 社群中**真正在用的** 9 個自動化案例和 4 個進階玩法，涵蓋 Morning Briefing、Email Triage、Homelab 監控、Slack 客服、PR Review、Multi-agent 協作等。影片後半段深入討論了 Skills/Memory 架構、安全防護層（隔離、權限、審批）、以及成本控制策略。重點不是理論上能做什麼，而是社群中實際在跑的案例。

## 重點筆記

### 9 個自動化案例

**#1 Morning Briefing**
- 每天早上 7:00 cron job，檢查日曆、天氣、email，送 Telegram 摘要
- 進階用戶 David 跑 7 個 cron jobs：GitHub trending、Hacker News、AI Twitter digest 等
- **「這將取代我訂閱的幾乎所有 newsletter」**

**#2 Email Triage**
- 自動退訂不要的 newsletter、草擬回覆、標記需注意的信
- **Lemonade Insurance 案例**：Nikita 的 OpenClaw 幫他草擬了一封比他自己更強硬的保險理賠申訴信，保險公司因此重新調查
- Sebastian 用 OpenClaw **一次草擬 21 封投資人信件**
- **關鍵實踐：Draft-only 模式**。Agent 優先考慮「有效」而非「維護關係」，人類做最終決定

**#3 Homelab Daily Report**
- 跑日報腳本、抑制已知問題、只在異常時通知
- 原則：**「只在有變化時通知我」**

**#4 Slack Customer Support**
- Bot 監聽公司 Slack 頻道，回覆客戶問題，重要事轉 Telegram
- 有一次**自主發現並修復了一個 production bug**（未被要求）

**#5 PR Review → Telegram**
- Claude Code 完成變更 → 開 PR → OpenClaw 審核 diff → 結論送 Telegram

**#6 Multi-Agent Dream Team**
- Telegram 發訊息 → **orchestrator** agent 接收 → 分派給 builder / reviewer / deployer
- 3 分鐘後 PR 已上並通過 QA
- **「以前要 10-20 萬美元顧問費的工作，現在一天就能完成」**

**#7 Camera Trigger Automation**
- Max 連接屋頂攝影機，天空漂亮時 AI 判斷、截圖、發通知
- **「攝影機不懂什麼是『漂亮』，但 OpenClaw 懂」**

**#8 TRMNL "Moment Before"**（VelvetShark 自己的作品）
- 每天 4AM，AI 查歷史上的今天 → 選一個事件 → 生成「事件發生前一刻」的木刻風格圖片 → 推到 e-ink 顯示器
- 範例：1969/1/30 倫敦 → Beatles 屋頂演唱會前一刻

**#9 Daily AI App Builder**
- 每天自動搜 Twitter 熱門 AI 趨勢 → 選一個 → **寫一個 app** → 推到 GitHub → 發連結
- **「當你的 AI 每天自主出貨程式碼，你已經超越了『輔助』的範疇」**

### 4 個進階玩法

1. **解碼緊急無線電**：30 分鐘內從硬體到解碼完成，零手動訓練
2. **智慧眼鏡整合**：AI 看到你看到的，用於即時比價
3. **壞螢幕筆電改 headless bot server**：零成本硬體升級
4. **AI 管理 coding agents**：OpenClaw 不只使用 coding agent，還**管理**它們，跟它們辯論 code review

### Skills & Memory 架構

- **三層配置**：Skills（功能模組）→ agents.md（行為規則）→ souls.md（人格設定）
- **記憶關鍵規則：「寫下來，否則會忘」**。檔案留存，mental notes 不會
- **QMD（Quick Markdown Search）**：本地筆記搜尋工具，結合 keyword search + semantic search + smart re-ranker 三層搜尋。**「你個人筆記的 Google」**，完全在本機運行

### 安全防護

1. **隔離**：Docker 或 Cloudflare Worker，read-only root，除非明確允許否則無網路存取
2. **權限**：Email 只能 draft 不能 send；有人用雙手機方案（私人 + bot 專用）
3. **審批**：檔案刪除、發送訊息、網路請求需要人類審批
4. **Prompt injection 防護**：**「不要用小模型。Opus 抵抗 prompt injection 的能力很好，Haiku 或其他小模型則不行」**

### $120 過夜災難

- 用戶設定 agent 安裝 Python 套件，一個 pip install 失敗
- **無 max retry、無 timeout**，agent 連續重試 6 小時
- 隔天起床發現 **$120 帳單**——都是一個永遠不會成功的 pip install 錯誤

### 成本控制三規則

1. **失敗 3 次後停止**（防無限重試）
2. **設定最大執行時間**
3. **睡前檢查 dashboard**

## 我的想法

- **Draft-only 模式**是一個非常實用的安全策略，可以補充到我的安全筆記中——它不是技術上的隔離，而是「行為層面的最小權限」
- **QMD** 解決的問題跟我用 Obsidian + 全文搜尋面臨的問題一樣——筆記越多越難找到對的那一篇。三層搜尋（精確 + 語義 + 重排）的架構值得研究
- **模型大小 vs prompt injection 抵抗力**是一個重要且之前沒注意到的點，應該更新到 Prompt Injection 筆記
- **Multi-agent orchestrator 模式**是目前看到最具體的多 agent 協作架構描述

## 衍生的永久筆記

- [[QMD 本地語義搜尋工具]]（新建）
- [[Multi-Agent Orchestrator 模式]]（新建）
- [[Prompt Injection 攻擊]] — 補充：大模型 vs 小模型的抵抗力差異
- [[AI Agent 的安全風險]] — 補充：Draft-only 模式
- [[AI Agent 的成本優化策略]] — 補充：$120 過夜災難案例、成本控制三規則

## 原始連結

- https://www.youtube.com/watch?v=52kOmSQGt_E
- Clawdiverse 社群展示：https://clawdiverse.com
- QMD GitHub：https://github.com/tobi/qmd
