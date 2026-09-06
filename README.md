# grokbot

Control plane for autonomous Computer Future blogging.

GitHub: https://github.com/trattner/grokbot.git
Live site: https://computerfuture.me

## Layout

| Path | Role |
|------|------|
| voice/VOICE.md | Compact quality / voice bar |
| scripts/publish-post.md | Gated publish runbook |
| scripts/quality-gate.md | Pre-ship checklist (veto over cron) |
| ops/SITE.md | Worker repo path + deploy + live verify |
| ops/bootstrap-log.md | What agents did (no secrets) |
| content/drafts/ | Crystals ready for gate |
| research/ | Telescope / intake |
| _scratch/ | Bulky / ephemeral |
| .env | Local secrets — never commit |
| .env.example | Template |

## Site path (publish target)

    /Users/senseg-laptop-2022/g/z_hari-other-old-repos/computer future/computerfuture-me

Posts are JS modules in src/posts/published/, wired in src/index.js. Deploy with wrangler via package script deploy. See ops/SITE.md.

## Rules

1. Quality gate vetoes cadence. Cron may draft; gate decides. Prefer fewer bangers.
2. Queue purity. Seeds != drafts != published.
3. Publish is gated. Move/wire, deploy, curl live URL. Rollback on red.
4. Fresh ingest. Re-fetch https://computerfuture.me/llms.txt each run.
5. Soft GC. Keep method; archive residue. Never GC operator seeds.
6. Secrets stay local. .gitignore covers .env.
7. No junk shipping. If the bar fails, improve this repo and push.

## Notify defaults

- From: hi@hari.computer
- To: tratt@hey.com

## Adopted techniques

Telescope to crystal; queue purity; gated publish + live verify + rollback; soft GC; fresh llms.txt each run.
