---
id: 202602041620
title: "YouTube - Clawdbot to Moltbot to OpenClaw by Nate B Jones"
created: 2026-02-04
updated: 2026-02-04
tags: [source/video, status/seedling, topic/ai-agent, topic/security, topic/opensource]
author: "Nate B Jones"
source_url: "https://www.youtube.com/watch?v=p9acrso71KU"
---

# Clawdbot to Moltbot to OpenClaw: The 72 Hours That Broke Everything

## 摘要

Nate B Jones 對 Moltbot（原 Clawdbot，現 OpenClaw）現象的深度分析。影片從五個維度切入：爆炸性成長（GitHub 史上最快達 82,000+ stars）、品牌改名的混亂與加密貨幣詐騙（$16M rugpull）、嚴重的安全漏洞發現（localhost auth bypass、plugin 供應鏈攻擊）、AI Agent 的根本架構矛盾（有用 ≡ 危險），以及一個獨特角度——DRAM 價格飆漲 172% 驅動的硬體搶購潮。**核心論點：Moltbot 的成功恰恰揭示了 agentic AI 最深層的矛盾——讓它有用的特性，正是讓它危險的特性。**

## 重點筆記

### 爆炸性成長與市場影響

- 24 小時內 9,000 stars → 一週 60,000 → 最終 82,000+，**GitHub 史上最快**
- Andre Karpathy 公開讚揚
- Google Trends 出現明顯的搜尋量尖峰
- **Cloudflare 股價上漲超過 20%**（因 Moltbot 使用 Cloudflare tunnels）
- Mac mini 供應鏈出現需求激增

### 品牌改名的 72 小時危機

- Anthropic 法律團隊發出 cease and desist（"Claud" + "W" 太接近商標）
- Steinberger 被迫改名為 Moltbot
- **致命的 10 秒鐘操作失誤**：改名時先釋出舊帳號名稱，才去註冊新名稱，中間出現空窗
- Crypto grifters 立即搶註舊 X/Twitter 帳號和 GitHub organization
- 假的 "Claude" token 在 Solana 上出現，**市值衝到 $16M 後經典 rugpull 崩盤**
- Steinberger 被迫公開聲明：「任何列我為幣主的專案都是詐騙」

### 安全漏洞：具體發現

**DVULN 紅隊公司（Jameson O'Reilly）：**

1. **Localhost 認證繞過** — Gateway 預設信任所有 localhost 連線；當部署在 reverse proxy 後方（常見模式），proxy 流量被視為本地連線，**完全繞過 OAuth 認證**
2. **暴露實例掃描** — 發現數百個暴露的 Moltbot 實例，至少 8 個完全開放：API keys、Telegram bot tokens 外洩，一個實例甚至將 Signal 配置在公開伺服器上
3. **Plugin 供應鏈攻擊** — O'Reilly 上傳良性 skill 到 "Claude Hub"（Moltbot 的 plugin marketplace），人為灌到 4,000 下載量，**7 個國家的開發者立即安裝**。零審核機制，開發者文件明確寫著所有下載的程式碼都被視為「trusted code」

**Matt Vukoule 概念驗證**：向脆弱的 Moltbot 實例發送一封惡意 email（prompt injection），5 分鐘內取得 private key 和完整控制權。

**One Password 安全團隊分析**：Agent 以純文字儲存 API keys，info stealer 惡意軟體可在數秒內竊取。

### AI Agent 的根本架構矛盾

**O'Reilly 的核心洞見**：

> 「我們花了 20 年建立 OSS 的安全邊界...所有的設計都是為了限縮行動範圍。但 Agent 的本質要求我們拆除這些邊界。」

- **有用的 agentic AI 需要廣泛的權限**；廣泛的權限 = 巨大的攻擊面
- 同一個能力既是功能（沒位子時自動打電話訂餐廳）也是漏洞（prompt injection 觸發 shell 命令）
- **20 年的安全設計基於根本不同的計算模型**，Agent 架構需要從頭思考
- Prompt injection 是 LLM 的根本性問題，目前**無人解決**——不只是 Moltbot 的問題

**企業 vs 開源的逆轉**：對 Agent 而言，開源的典型優勢被逆轉——Agent 根本性地需要審計、隔離、責任保證，這些是企業級產品的強項。

### DRAM 漲價與硬體搶購的經濟學

- **DRAM 價格自 2025 年初飆漲 172%**，預計 2026 年底再翻倍
- 原因不是景氣循環，而是**結構性轉移**：wafer 產能從消費者記憶體轉向 AI 用途
- **HBM（High Bandwidth Memory）每 GB 消耗的晶圓面積是標準 DRAM 的 4 倍**
- Samsung、SK Hynix、Micron 已簽下與超大規模服務商的多年供貨協議
- 消費者記憶體只能分到剩餘產能

**重新解讀 Mac mini 搶購潮**：不只是 FOMO，而是**開發者在硬體成本尚可承受時鎖定本地算力**——對抗未來本地 AI 被定價排擠的風險。

### 超大規模服務商依賴悖論

- Moltbot 承諾「AI 自主權」——你控制 agent 層
- 但**大多數 Moltbot 實例仍然路由到 Claude API**
- 「你擁有 agent 層，你租用智能」
- 逃生艙（Ollama 本地模型）需要 RAM，而 RAM 正流向同樣的資料中心
- **自主權的追求最終回到了對超大規模服務商的依賴**

### 大公司 AI 助理為何失敗

- Siri（2011）：圍牆花園，只能用 Apple 核准的整合
- Google Assistant（2016）：知道你的一切，卻幾乎什麼都不做
- Alexa：能控制燈光，無法管理收件匣
- **共同原因：企業責任考量限制了功能範圍**
- Moltbot 的 82,000+ stars = **15 年被壓抑的需求終於爆發**

### 使用建議

- **技術用戶**：了解 VPS、網路隔離、憑證輪換的前提下，可以嘗試，但要充分認知風險
- **99% 的用戶**：等待。專案年輕、安全模型不成熟。預計 3 個月內會有 VC 資助的競品出現
- **處理敏感資料的專業人士**：不要連接財務、健康、客戶通訊資料

## 我的想法

- 這是目前看過對 Moltbot/OpenClaw 分析最全面的影片，從技術、經濟、安全、市場多角度切入
- 「有用 ≡ 危險」悖論是一個值得深入思考的架構問題——不只適用於 Moltbot，而是所有 agentic AI
- DRAM 經濟學的角度是全新的見解，與既有的 [[算力的盡頭是電力]] 形成互補（電力 vs 記憶體，兩種不同的物理限制）
- 超大規模服務商依賴悖論挑戰了「本地 = 自主」的簡單敘事
- plugin marketplace 的供應鏈攻擊讓我重新思考 Claude Code Skills 的安全模型

## 衍生的永久筆記

- [[AI Agent 的安全風險]] — 更新具體漏洞發現
- [[AI Agent 的有用性與危險性悖論]] — 新筆記
- [[開源專案的品牌風險]] — 更新詐騙細節
- [[AI 硬體軍備競賽推高記憶體成本]] — 新筆記
- [[本地運行 vs 雲端運行 AI Agent]] — 更新依賴悖論

## 原始連結

- https://www.youtube.com/watch?v=p9acrso71KU
- Substack 完整報告：https://natesnewsletter.substack.com/p/the-moltbot-origin-story-a-16-million
