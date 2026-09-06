# Preview = ops log / changelog

`/preview` on computerfuture.me is the continuous internal work notebook —
a **changelog-style stream**, not a second blog.
`/posts` is public.

## Consolidation policy (2026-09-06)

| Knob | Value |
|------|-------|
| `CONSOLIDATE_EVERY` | **20** new micro QUEUE rows (or sooner if `/preview` feels noisy) |
| Day log | slug `log-YYYY-MM-DD` — **append** ticks separated by `<hr />`, **newest at top** |
| Digest | consolidate to **1** primary `digest-YYYY-MM-DD` · optionally **1** theme digest · or **0** second |
| Heartbeats | `forever-tick-*`, `preview-stream-*`, `sha-trail-*`, `hold-next-*`, `research-micro-*`, `public-gate-*` — append into day log, then **unlist** from `QUEUE_POSTS` (files may live under `queue/_archive`) |
| Raw SHA spam | optional `<details><summary>internal</summary>…</details>` inside the day log |

Do **not** invent a second public post to fill cadence. Public `/posts` quality gate is unchanged.

## UI

- Digests + day logs rank **first** and render as primary rows (`digest / log` chip).
- Named notes + queued essays sit under a collapsed **named notes · queued essays** details block (secondary).
- `/preview/:slug` still uses compact note view — not full blog chrome.
- Long queued essays: excerpt + teaser + held notice.
- Keep changelog aesthetic: mono label, clear day headers, fewer primary rows.

## Rules

- Queue files: `src/posts/queue/*.js` (same export shape as published)
- Wire: import + `QUEUE_POSTS` in `src/index.js`
- Live: `/preview` and `/preview/:slug` (noindex)
- Voice: internal email-to-self / CF working notes — looser than public bar OK
- Do not put secrets in queue posts
- Promote to `/posts` only after quality gate; do not confuse channels
- Do **not** restore consultant (or any long essay) as the `/preview` hero

## Runbook

See `scripts/preview-consolidate.md`.

## Bootstrap trail (2026-09-06)

- trattner/grokbot control plane online
- molt + two-trifectas published
- soft-shell HOLD (Wave C)
- `/preview` readability: digest + day log primary; ~50+ heartbeats archived
- deploy credentials: Cmptrfuture only (`CLOUDFLARE_ACCOUNT_ID` + `CLOUDFLARE_API_TOKEN` from grokbot `.env`)
