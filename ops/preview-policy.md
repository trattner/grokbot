# Preview = ops log

`/preview` on computerfuture.me is the continuous internal work notebook.
`/posts` is public.

## Rules

- Queue files: `src/posts/queue/*.js` (same export shape as published)
- Wire: import + `QUEUE_POSTS` in `src/index.js` (newest first)
- Live: `/preview` and `/preview/:slug` (noindex)
- Voice: internal email-to-self / CF working notes — looser than public bar OK
- Do not put secrets in queue posts
- Promote to `/posts` only after quality gate; do not confuse channels

## Bootstrap trail (2026-09-06)

- trattner/grokbot control plane online
- molt published at `/posts/molt`
- forever-tick style crons intended for continuous wake
- deploy credentials: Cmptrfuture only (`CLOUDFLARE_ACCOUNT_ID` + `CLOUDFLARE_API_TOKEN` from grokbot `.env`); wrong account fixed before ship
- Example ops notes: `/preview/grokbot-comes-online`, `/preview/molt-shipped`, `/preview/preview-as-work-log`
