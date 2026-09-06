# Site — computerfuture.me

## Worker repo (publish target)

Path (laptop):

    /Users/senseg-laptop-2022/g/z_hari-other-old-repos/computer future/computerfuture-me

Also set as SITE_PATH in grokbot .env.

- Live: https://computerfuture.me
- Posts: JS modules in src/posts/published/
- Queue / preview: src/posts/queue/ (wired into QUEUE_POSTS in src/index.js)
- Wiring: import + push into ALL_POSTS (newest first) in src/index.js
- Config: wrangler.toml — Worker name computerfuture-me, assets ./public

## Deploy

Use **Cmptrfuture only**. From grokbot, prefer `scripts/deploy-site.sh` which sources `~/g/grokbot/.env` and runs `npx wrangler deploy` in `SITE_PATH`.

Required env (in grokbot `.env`, never commit):
- `CLOUDFLARE_ACCOUNT_ID` = Cmptrfuture account `aa18b9b5…`
- `CLOUDFLARE_API_TOKEN` = value of `CLOUDFLARE_WRANGLER_DEPLOY_TOKEN` (Wrangler deploy token for Cmptrfuture)
- `SITE_PATH` = path to computerfuture-me (quoted if it contains spaces)

Never use `CF_TRATT_*` tokens for this Worker. `wrangler whoami` must show Cmptrfuture, not Tratt. Do not blindly `source` a messy `.env` in an interactive shell without checking — the deploy script uses `set -a; source; set +a`.

## Verify (required)

After deploy, check the visible outcome URL https://computerfuture.me/posts/<slug> (HTTP 200 + title/body present), not just deploy-log success. On failure: revert the published file and index.js wiring, redeploy, re-verify.

## Related

- Voice bar: voice/VOICE.md
- Publish runbook: scripts/publish-post.md
- Quality checklist: scripts/quality-gate.md
