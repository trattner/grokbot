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

Between named publish waves, default is miss. Even a draft with all dry-run boxes checked stays HOLD until Wave convert. Scheduled clock for Wave B/C passing without convert-or-hold does not clear HOLD — public-gate still misses. Do not invent a PASS to justify deploy of /posts.
Post-wave residual capacity (daily count under 10 after a ship) ≠ PASS. Soft-shell-commons and any next crystal stay HOLD until their named wave's convert-or-hold; mid-cycle public-gate still misses.

## Pre-wave hour (extra veto)

- T-60 through T-0 before a named wave (e.g. 15:00–16:00 ahead of Wave C) is still mid-cycle. Approaching the scheduled clock does not clear HOLD.
- Band-restore / forever-tick polish while a crystal carries Wave HOLD does not convert. Dry-run boxes staying checked across polish passes still ≠ aloud PASS.
- Only the wave's convert-or-hold (or an explicit later edit that removes every HOLD/tilde marker AND records an aloud PASS) may ship public HTML.
- Prefer append-to-day-log for this heartbeat (`log-YYYY-MM-DD`) over inventing a new `public-gate-*` QUEUE row (see ops/preview-policy.md).

## Mid-pre-wave repeat ticks

- A second or third `@every 30m` public-gate fire inside the same pre-wave hour (e.g. ~15:00 then ~15:30 before Wave C) **reaffirms miss**. Elapsed heartbeats are not evidence toward PASS.
- Final-quarter hour (T-15…T-0) is still miss. Being fifteen minutes from the named wave does not convert HOLD; the wave's aloud convert-or-hold still owns release.
- Do not invent a new `public-gate-*` QUEUE row for the reaffirm — append the day log only.
- Soft-shell (or any Wave C crystal) stays HOLD until Wave C convert-or-hold runs aloud, even if dry-run boxes stay checked across every mid-pre-wave re-scan.

## Post-wave residual (extra veto)

- An `@every 30m` public-gate fire **minutes after** a named wave ships still **misses** for the next crystal.
- Wave C PASS on soft-shell-commons does **not** convert `fit-is-the-method` (or flag-the-absence / sibling seeds). Residual daily capacity (e.g. 3/10) is never a soft green light.
- Dry-run boxes checked on the next crystal ≠ aloud PASS. Evening improve / a later named wave owns convert-or-hold.
- Append the miss to `log-YYYY-MM-DD` only — no new `public-gate-*` QUEUE row.
