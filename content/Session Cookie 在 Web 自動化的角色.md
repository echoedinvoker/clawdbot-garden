---
id: 202601270828
title: "Session Cookie 在 Web 自動化的角色"
created: 2025-01-27
updated: 2025-01-27
tags: [topic/automation, topic/web, topic/security, status/seedling]
aliases: [Cookie-based Authentication, Session 持久化]
---

# Session Cookie 在 Web 自動化的角色

在 Web 自動化中，**Session Cookie 是讓 bot 擁有「身份」的關鍵**。當你手動登入 LinkedIn、Gmail 或任何網站時，瀏覽器會儲存一個 session cookie，證明你已經通過驗證。如果自動化工具能保存並重複使用這個 cookie，它就能「以你的身份」操作網站，而不需要每次都重新登入。

這解決了自動化的三大難題：
1. **繞過登入流程**：不需要處理 2FA、CAPTCHA
2. **維持登入狀態**：像真人一樣持續存取
3. **減少被偵測風險**：行為更像正常使用者

## 為什麼重要

傳統自動化方式（如直接呼叫 API 或每次重新登入）容易被平台偵測為異常行為。Session cookie 的方式模擬了真人使用模式：登入一次，然後持續使用。

**實務應用場景：**
- 社群平台自動化（LinkedIn、Twitter、Instagram）
- 內部系統的自動化操作
- 需要登入的網站爬蟲

**風險考量：**
- Cookie 過期需要重新登入
- Cookie 被盜用等同帳號被盜
- 需要安全的儲存機制

## 連結

- 上層：Clawdbot MOC
- 相關：Playwright MCP 安裝與設定、[[本地運行 vs 雲端運行 AI Agent]]
- 來源：[[YouTube - Intro to Clawdbot by Kevin Kerns]]

## 參考

- Clawdbot 透過本地瀏覽器保存 session cookies，讓 agent 可以「登入一次，隨時存取」
