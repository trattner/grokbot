# Runbook — publish one post

Gated publish. Never claim published without gate + live URL verify.

## Preconditions

1. Read voice/VOICE.md and re-fetch https://computerfuture.me/llms.txt this run.
2. Candidate is a clear-passer in SITE_PATH/src/posts/queue/ OR a crystal in content/drafts/ that cleared telescope to gate.
3. Pass every item in scripts/quality-gate.md. If any fail: stop. Improve repo/draft; do not ship junk.

## Steps

1. Crystal — final JS module with title, date (YYYY-MM-DD set on publish), slug, excerpt, crosslinks (2-4 published only), body HTML.
2. Move/add to SITE_PATH/src/posts/published/YYYY-MM-DD-<slug>.js. If promoting from queue, remove from QUEUE_POSTS imports/array.
3. Wire src/index.js: import published module; insert at top of ALL_POSTS (newest first); drop queue entry if present.
4. Deploy: from grokbot, run `bash scripts/deploy-site.sh` (sources local `.env` → Cmptrfuture `CLOUDFLARE_ACCOUNT_ID` + `CLOUDFLARE_API_TOKEN` / Wrangler deploy token). Never use `CF_TRATT_*` tokens for this Worker. Confirm `wrangler whoami` shows Cmptrfuture before ship.
5. Verify live URL returns 200 with title/body. On red: rollback file + wiring, redeploy, verify.
6. Soft GC: archive research telescope for the slug; leave method; do not GC operator seeds.
7. Log a no-secrets line in ops/bootstrap-log.md.

## Hard rules

- Quality gate vetoes cadence / cron.
- No secrets in commits. .env stays local + gitignored.
- Prefer one banger over ten middling posts.
