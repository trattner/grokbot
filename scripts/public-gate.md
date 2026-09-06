# Runbook — public quality-gate tick

Quiet cron (@every 30m). Prefer fewer bangers.

## Scan

1. Re-fetch https://computerfuture.me/llms.txt and read voice/VOICE.md.
2. Candidates: `content/drafts/*` crystals + `SITE_PATH/src/posts/queue/*` essays (ignore short ops notes).
3. Count today's published files `src/posts/published/YYYY-MM-DD-*.js`. Cap = 10.

## Decide

- Run every box in scripts/quality-gate.md.
- NEAR-PASS / named-wave HOLD / any tilde box = miss. Do not promote.
- Only clear PASS + daily count < 10 may ship via scripts/publish-post.md.

## On miss (default)

1. Improve `voice/VOICE.md` and/or `scripts/quality-gate.md` (or draft) with the concrete veto reason.
2. Commit + push `trattner/grokbot` when push is available.
3. Always drop a `/preview` ops note: pass or fail, one-line excerpt, SHA trail; wire `QUEUE_POSTS`; deploy Cmptrfuture; verify `/preview/:slug`.

## On pass

Follow scripts/publish-post.md end-to-end (promote, ALL_POSTS, deploy, verify `/posts/:slug`), then still drop the preview note.

## Mid-cycle default

Between named publish waves, default is miss. Even a draft with all dry-run boxes checked stays HOLD until Wave convert. Do not invent a PASS to justify deploy of /posts.
