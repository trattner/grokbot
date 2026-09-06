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

From the Worker repo directory, set CLOUDFLARE_API_TOKEN from CF_TRATT_WORKERS_EDIT (or CLOUDFLARE_hari_full_access) and CLOUDFLARE_ACCOUNT_ID from CF_TRATT_ACCOUNT_ID, then run the package script named deploy (wrangler). Do not blindly source .env — weird lines can break the shell.

## Verify (required)

After deploy, check the visible outcome URL https://computerfuture.me/posts/<slug> (HTTP 200 + title/body present), not just deploy-log success. On failure: revert the published file and index.js wiring, redeploy, re-verify.

## Related

- Voice bar: voice/VOICE.md
- Publish runbook: scripts/publish-post.md
- Quality checklist: scripts/quality-gate.md
