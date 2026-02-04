---
id: 202601271355
title: "Clawdbot 設定指南"
created: 2026-01-27
updated: 2026-01-27
tags: [topic/clawdbot, topic/ai-assistant, status/seedling]
aliases: []
---

# Clawdbot 設定指南

Clawdbot 是開源的個人 AI 助理，可以連接多個通訊平台（Telegram、Slack、WhatsApp 等），支援語音回覆。

## 常用指令

```bash
# 設定
clawdbot configure --section web      # 設定 Brave Search
clawdbot configure --section channels # 設定通訊頻道

# 服務管理
clawdbot daemon status   # 查看狀態
clawdbot daemon restart  # 重啟服務
clawdbot daemon logs     # 查看 log

# 配對管理
clawdbot pairing list --channel telegram    # 列出待配對請求
clawdbot pairing approve --channel telegram CODE  # 核准配對
```

## TTS 語音設定

```bash
# 在對話中開啟 TTS（Slack 要加空格繞過 slash command）
 /tts always

# 或直接編輯設定檔 ~/.clawdbot/clawdbot.json
{
  "messages": {
    "tts": {
      "auto": "always",
      "provider": "edge",
      "edge": {
        "voice": "zh-TW-YunJheNeural",
        "pitch": "-10%"
      }
    }
  }
}
```

### TTS 頻道差異

| 頻道 | TTS 行為 |
|------|----------|
| Telegram | 直接發送語音訊息 |
| Slack | 發送 MP3 附件 |
| WhatsApp | 需安裝 tts-whatsapp skill |

## Telegram 設定

1. 找 @BotFather 建立 bot，取得 token
2. `clawdbot configure --section channels` 選 Telegram
3. 如果遇到連線問題，參考 [[Node.js fetch IPv6 連線問題排查]]
4. 用 `clawdbot pairing approve` 完成配對

## Log 位置

```
/tmp/clawdbot/clawdbot-YYYY-MM-DD.log
```

## 為什麼重要

Clawdbot 是目前最接近「個人 Jarvis」的開源方案，整合了多平台、記憶、主動提醒等功能。熟悉設定流程可以更好地客製化使用體驗。

## 連結

- 上層：Clawdbot MOC
- 相關：[[Clawdbot]]、[[Node.js fetch IPv6 連線問題排查]]

## 參考

- 官方文件：https://docs.clawd.bot
- GitHub：https://github.com/clawdbot/clawdbot
