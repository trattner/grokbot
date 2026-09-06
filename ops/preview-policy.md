# Preview = ops log / changelog

`/preview` on computerfuture.me is the continuous internal work notebook —
a **changelog-style stream**, not a second blog.
`/posts` is public.

## UI (2026-09-06)

- `/preview` renders a dense changelog: mono label (`preview · ops log · changelog`),
  back link to `/`, one compact row per queue item (`date · title · one-line excerpt`),
  newest-first (XX dates sort last), day grouping, status chips
  (`note` / `queued essay` / `shipped`).
- `/preview/:slug` uses a compact note view — **not** the full `singlePostPage` blog chrome.
  - Short ops notes: full body OK.
  - Long queued essays (e.g. `consultant`): excerpt + short teaser +
    "queued essay — full text held; not a public post" + link back to `/preview`.
- Andy granted UI/UX modify permission for `/preview` ("design as you like").

## Rules

- Queue files: `src/posts/queue/*.js` (same export shape as published)
- Wire: import + `QUEUE_POSTS` in `src/index.js` (newest first; list also sorts by date)
- Live: `/preview` and `/preview/:slug` (noindex)
- Voice: internal email-to-self / CF working notes — looser than public bar OK
- Do not put secrets in queue posts
- Promote to `/posts` only after quality gate; do not confuse channels
- Do **not** restore consultant (or any long essay) as the `/preview` hero

## Bootstrap trail (2026-09-06)

- trattner/grokbot control plane online
- molt published at `/posts/molt`
- forever-tick style crons intended for continuous wake
- deploy credentials: Cmptrfuture only (`CLOUDFLARE_ACCOUNT_ID` + `CLOUDFLARE_API_TOKEN` from grokbot `.env`); wrong account fixed before ship
- Example ops notes: `/preview/grokbot-comes-online`, `/preview/molt-shipped`, `/preview/preview-as-work-log`, `/preview/preview-is-changelog`
- UX ship: `/preview` → changelog stream; `/preview/consultant` → compact/truncated

## Forever-tick / preview-stream (optional prompt notes)

When waking for preview-stream: prefer short ops notes; never reintroduce full-essay
heroes on `/preview`; keep chips + dense rows; document meaningful UX or deploy
events as queue notes (e.g. `preview-is-changelog`).
