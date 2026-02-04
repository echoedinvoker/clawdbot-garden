#!/bin/bash
set -e

ZETTEL="$HOME/zettelkasten"
GARDEN="$HOME/Documents/clawdbot-garden"
CONTENT="$GARDEN/content"

rm -rf "$CONTENT"/*

# MOC as index page
cp "$ZETTEL/3-permanent/Clawdbot MOC.md" "$CONTENT/index.md"

# --- All first-level permanent notes ---
PERMANENT_NOTES=(
  "Clawdbot"
  "本地運行 vs 雲端運行 AI Agent"
  "通訊平台作為 AI Agent 介面"
  "Agent Skills 模式"
  "AI Agent 的記憶系統設計"
  "開源 AI Agent 的優勢"
  "Clawdbot 與 Claude Code 的差異"
  "Clawdbot 設定指南"
  "Session Cookie 在 Web 自動化的角色"
  "Heartbeat 機制讓 Agent 保持待命"
  "AI Morning Brief 模式"
  "競爭情報自動化"
  "AI Agent 的安全風險"
  "AI 工具的成本考量"
  "AI Agent 的成本優化策略"
  "多模型路由可以大幅降低 AI 成本"
  "Context 管理的 Keep It Lean 原則"
  "AI 的自主問題解決能力"
  "AI Agent 的有用性與危險性悖論"
  "Command Audit Log 的重要性"
  "AI 硬體軍備競賽推高記憶體成本"
  "為 AI 命名的心理效果"
  "Node.js fetch IPv6 連線問題排查"
  "QMD 本地語義搜尋工具"
  "Multi-Agent Orchestrator 模式"
)
for note in "${PERMANENT_NOTES[@]}"; do
  src="$ZETTEL/3-permanent/$note.md"
  [ -f "$src" ] && cp "$src" "$CONTENT/$note.md"
done

# --- All first-level literature notes ---
LIT_NOTES=(
  "YouTube - Intro to Clawdbot by Kevin Kerns"
  "YouTube - Clawdbot 48小時使用心得"
  "YouTube - I Played with Clawdbot all Weekend"
  "YouTube - Open Source Friday with Clawdbot"
  "YouTube - ClawdBot is the most powerful AI tool"
  "I Cut My OpenClaw Costs by 97%"
  "YouTube - Clawdbot to Moltbot to OpenClaw by Nate B Jones"
  "YouTube - OpenClaw use cases by VelvetShark"
)
for note in "${LIT_NOTES[@]}"; do
  src="$ZETTEL/2-literature/$note.md"
  [ -f "$src" ] && cp "$src" "$CONTENT/$note.md"
done

# --- Cross-referenced MOC ---
CROSS_REFS=(
  "Claude Code MOC"
  "開源不等於安全"
  "Prompt Injection 攻擊"
  "開源專案的品牌風險"
  "算力的盡頭是電力"
)
for note in "${CROSS_REFS[@]}"; do
  src="$ZETTEL/3-permanent/$note.md"
  [ -f "$src" ] && cp "$src" "$CONTENT/$note.md"
done

# --- Images (strip attachments/ prefix for Quartz path resolution) ---
for f in "$ZETTEL/attachments"/openclaw-*.jpg; do
  [ -f "$f" ] && cp "$f" "$CONTENT/$(basename "$f")"
done

# --- Strip broken wikilinks (second-level links without pages) ---
VALID_TARGETS=()
for f in "$CONTENT"/*.md; do
  name="$(basename "$f" .md)"
  VALID_TARGETS+=("$name")
done

for f in "$CONTENT"/*.md; do
  perl -pi -e '
    my @valid = split /\n/, q{'"$(printf '%s\n' "${VALID_TARGETS[@]}")"'};
    my %ok = map { $_ => 1 } @valid;
    # [[target|alias]] form
    s/\[\[([^\]|]+)\|([^\]]+)\]\]/exists $ok{$1} ? "[[$1|$2]]" : "$2"/ge;
    # [[target]] form (no alias) — skip image embeds ![[...]]
    s/(?<!!)\[\[([^\]|]+)\]\]/exists $ok{$1} ? "[[$1]]" : "$1"/ge;
  ' "$f"
done

echo "Synced and cleaned: $(ls "$CONTENT"/*.md | wc -l) files, $(ls "$CONTENT"/*.jpg 2>/dev/null | wc -l) images"
