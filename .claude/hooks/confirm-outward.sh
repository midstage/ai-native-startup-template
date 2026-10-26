#!/bin/bash
# PreToolUse: any connected tool that sends, posts, publishes, shares or
# invites reaches another person. Make Claude Code ask the founder first, every
# time. A rule in CLAUDE.md can be overruled; this hook can't.

cat >/dev/null  # drain stdin, unused

cat <<'JSON'
{"hookSpecificOutput":{"hookEventName":"PreToolUse","permissionDecision":"ask","permissionDecisionReason":"One-way door: this tool can reach another person or publish something. Confirm before it runs. An earlier approval does not carry over."}}
JSON
