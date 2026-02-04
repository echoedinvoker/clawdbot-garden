---
id: 202602041338
title: "AI Agent 的成本優化策略"
created: 2026-02-04
updated: 2026-02-04
tags: [topic/ai-agent, topic/cost-optimization, status/seedling]
aliases: []
---

# AI Agent 的成本優化策略

AI Agent 平台（如 OpenClaw）的預設配置優先考慮能力而非成本效率，導致大量 token 浪費在非必要操作上。優化成本的核心策略有四個層次：

1. **Context 瘦身**：不要每次請求都載入所有檔案和歷史訊息，只載入必要的 context，其餘按需查詢。這一步通常能節省最多（可達 80%）。
2. **多模型路由**：依任務複雜度分配不同模型（Haiku 處理簡單任務、Sonnet 處理中等任務、Opus 只用於最複雜的推理），而非所有任務都用最貴的模型。
3. **本地 LLM 處理低價值操作**：心跳檢查、檔案整理等「無腦任務」用免費的本地模型（如 Ollama）處理，閒置成本降為零。
   - **免費模型選項**：Kimi K2.5 可透過 Ollama cloud model 方式免費運行，擅長 coding（特別是 UI 開發），適合作為 coding sub-agent；Minimax 2.1 支援 OAuth 登入（免手動設定 API key），提供 7 天免費使用期。兩者可搭配使用——token 用完時互相切換。
4. **速率限制與預算控制**：設定 API 呼叫間隔、每日/月預算上限，防止失控燒錢。

這四個策略是獨立且可疊加的，各自針對不同的成本驅動因素。

## 成本失控的反面案例：$120 過夜災難

一個用戶設定 agent 安裝 Python 套件，一個 pip install 失敗後，agent **連續重試 6 小時**（用戶在睡覺），沒有 max retry 也沒有 timeout。隔天起床發現 $120 帳單——全部花在一個永遠不會成功的錯誤上。

**防止失控的三條規則：**
1. **失敗 3 次後停止** — 防無限重試迴圈
2. **設定最大執行時間** — 任務不能無限跑
3. **睡前檢查 dashboard** — 確認沒有卡住的任務

## 為什麼重要

AI Agent 的價值在於自動化和持續運行，但如果每小時成本過高，就會限制它的實用性。從每月 $70-90 降到 $3-5 的差距，決定了你能否真正讓 agent 長期運行。成本優化不是犧牲能力，而是把正確的能力放在正確的任務上。

## 連結

- 相關：[[多模型路由可以大幅降低 AI 成本]]
- 相關：[[Context 管理的 Keep It Lean 原則]]

## 參考

- [[I Cut My OpenClaw Costs by 97%]]
- [[YouTube - OpenClaw use cases by VelvetShark]] — $120 過夜災難案例
