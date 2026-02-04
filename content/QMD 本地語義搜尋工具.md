---
id: 202602041647
title: "QMD 本地語義搜尋工具"
created: 2026-02-04
updated: 2026-02-04
tags: [topic/ai-agent, topic/tools, topic/search, status/seedling]
aliases: [QMD, Quick Markdown Search]
---

# QMD 本地語義搜尋工具

QMD（Quick Markdown Search）是一個**完全在本機運行**的 Markdown 筆記搜尋工具，解決 AI Agent 在大量筆記中找到正確資訊的問題。可作為 OpenClaw 的 Skill 安裝。

## 三層搜尋架構

QMD 結合三種搜尋技術，而非只用其中一種：

| 搜尋層 | 適用場景 | 類比 |
|--------|----------|------|
| **Keyword Search** | 知道確切的關鍵字 | Ctrl+F |
| **Semantic Search** | 只有模糊的概念 | 「找跟 X 有關的東西」 |
| **Smart Re-ranker** | 多筆結果需要排序 | 把最相關的排到最前面 |

Agent 會自動判斷使用哪種搜尋方式（也可以手動指定 deep search 來強制使用語義搜尋 + 重排）。

## 為什麼重要

這解決了 AI Agent 記憶系統的**檢索瓶頸**：

- 根據 [[AI Agent 的記憶系統設計]]，記憶的關鍵是「寫下來」
- 但當筆記累積到成千上萬篇，**找到對的那篇**比寫下來更困難
- 不用把整個 vault 丟進 context window（昂貴且低效），而是精準檢索需要的段落

這相當於給 AI Agent 一個**「你個人筆記的 Google」**，完全本地運行，不需雲端。

## 連結

- 上層：Clawdbot MOC
- 相關：[[AI Agent 的記憶系統設計]]、[[Agent Skills 模式]]
- 類比：RAG 檢索增強生成 — QMD 本質上是本地化的 RAG

## 參考

- GitHub：https://github.com/tobi/qmd
- [[YouTube - OpenClaw use cases by VelvetShark]] — QMD 介紹與使用演示
