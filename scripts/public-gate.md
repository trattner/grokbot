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

## Mid-evening residual (extra veto)

- Hours between a named-wave afternoon ship (e.g. Wave C ~16:00) and evening improve (~19:00) still **miss**.
- Elapsed `@every 30m` heartbeats after post-wave residual do not accumulate toward PASS.
- `fit-is-the-method` (and sibling HOLD crystals) stay HOLD until evening improve / a later named wave runs aloud convert-or-hold.
- Residual daily capacity (e.g. 3/10) remains never sufficient. Append day-log only — no new `public-gate-*` QUEUE row.

## Late mid-evening / approaching evening (extra veto)

- An `@every 30m` public-gate fire inside the hour before evening improve (T-60…T-0, e.g. ~18:00–19:00) still **misses**.
- Clock proximity to evening (~19:00) does not convert HOLD. Being forty-five minutes out is still miss — same physics as pre-wave T-60…T-0.
- Dry-run boxes checked on `fit-is-the-method` ≠ aloud PASS. Evening improve owns convert-or-hold.
- Elapsed mid-evening heartbeats (~17:14 → ~18:14) do not accumulate toward PASS. Residual 3/10 headroom remains never sufficient.
- Sibling HOLD crystals stay HOLD. Append day-log only — no new `public-gate-*` QUEUE row.

## Post-evening / Mac-blocked convert (extra veto)

- After evening improve ~19:00 (or when evening improve never-ran), a forever-tick / public-gate PASS-candidate still **misses** public HTML until Mac land + Cmptrfuture wrangler deploy + curl 200 on `/posts/:slug`.
- Local-exec / Mac unreachable is **BLOCKED** miss, not a quality FAIL and not a soft green light.
- PASS-candidate staged on box ≠ soft-promote. Residual 3/10 headroom never soft-promotes.
- Append the miss to `log-YYYY-MM-DD` only — no new `public-gate-*` QUEUE row.

## Post-evening-improve Mac-blocked residual (extra veto)

- After evening improve has fired (even when its receipt is BLOCKED_MAC / consolidate-only), later `@every 30m` public-gate ticks (~20:00+) still **miss** public HTML until Mac land + Cmptrfuture wrangler + curl 200 on `/posts/:slug`.
- Evening consolidate / digest refresh / QUEUE unlist staged on box ≠ ship. Forever-tick PASS-candidate package left intact ≠ soft-promote.
- Live tip lag (e.g. tip still ~18:31 while later prepends are staged) + `/posts/:slug` 404 is evidence of BLOCKED miss, not quality FAIL and not a soft green light.
- Residual 3/10 headroom never soft-promotes. Sibling HOLD crystals stay HOLD. Append day-log only — no new `public-gate-*` QUEUE row.
- Prefer real ship when Mac returns over inventing more preview heartbeats.

## Late-evening continuous Mac-blocked re-scan (extra veto)

- A second (or later) `@every 30m` public-gate fire while Mac is still unreachable after post-evening-improve residual (e.g. ~20:08 → ~20:43) still **misses**.
- Elapsed late-evening heartbeats do not accumulate toward PASS. Sibling research-micro seeds staged on box (one-slot, etc.) never soft-promote.
- Forever-tick PASS-candidate + evening consolidate left intact ≠ ship. Live tip lag (e.g. tip still ~18:31) + `/posts/:slug` 404 remains BLOCKED evidence.
- Residual 3/10 headroom never soft-promotes. Append day-log only — no new `public-gate-*` QUEUE row.
- Prefer real ship when Mac returns over inventing more preview heartbeats.

## Night continuous Mac-blocked re-scan (extra veto)

- After night research (~21:00) has fired (SEED HOLD / tomorrow queue only), a later `@every 30m` public-gate tick (e.g. ~21:15 then ~21:46) still **misses** public HTML until Mac land + Cmptrfuture wrangler + curl 200 on `/posts/:slug`.
- Night SEED HOLD crystals and tomorrow-queue rows never soft-promote (including continuity-is-the-contract / late-is-wrong / said-is-not-done micros). Forever-tick PASS-candidate + evening consolidate left intact ≠ ship.
- Live tip lag (e.g. tip still ~18:31 while later prepends are staged) + `/posts/:slug` 404 remains BLOCKED evidence — not quality FAIL and not a soft green light.
- Stacking evening→night heartbeats (~20:08 → ~20:43 → ~21:15 → ~21:46) does not accumulate toward PASS. Residual 3/10 headroom never soft-promotes.
- Sibling HOLD crystals stay HOLD. Append day-log only — no new `public-gate-*` QUEUE row.
- Prefer real ship when Mac returns over inventing more preview heartbeats.

## Late-night continuous Mac-blocked re-scan (extra veto)

- After the post-~21:44 preview-stream consolidate band, a later `@every 30m` public-gate tick (e.g. ~22:05) while Mac remains unreachable still **misses** public HTML until Mac land + Cmptrfuture wrangler + curl 200 on `/posts/:slug`.
- Stacking night→late-night heartbeats (~21:15 → ~21:46 → ~22:05) + preview OF v2 appends + said-is-not-done HOLD never accumulate toward PASS.
- Forever-tick PASS-candidate + evening consolidate left intact ≠ ship. Live tip lag (e.g. tip still ~18:31) + `/posts/:slug` 404 remains BLOCKED evidence.
- Residual 3/10 headroom never soft-promotes. Sibling HOLD crystals stay HOLD. Append day-log only — no new `public-gate-*` QUEUE row.
- Prefer real ship when Mac returns over inventing more preview heartbeats.

## Deep late-night continuous Mac-blocked re-scan (extra veto)

- After public-gate ~22:05 and the ~22:37–22:40 forever/preview band, a later `@every 30m` public-gate tick (e.g. ~22:43) while Mac remains unreachable still **misses** public HTML until Mac land + Cmptrfuture wrangler + curl 200 on `/posts/:slug`.
- Stacking late-night heartbeats (~22:05 → ~22:43) + research-micro HOLD crystals (missed-conflict-is-the-leak, said-is-not-done, etc.) + preview OF v2 consolidates never accumulate toward PASS.
- Forever-tick PASS-candidate + evening consolidate left intact ≠ ship. Live tip lag (e.g. tip still ~18:31) + `/posts/:slug` 404 remains BLOCKED evidence.
- Residual 3/10 headroom never soft-promotes. Sibling HOLD crystals stay HOLD. Append day-log only — no new `public-gate-*` QUEUE row.
- Prefer real ship when Mac returns over inventing more preview heartbeats.

## Post-~22:43 continuous Mac-blocked re-scan (extra veto)

- After public-gate ~22:43 and the forever ~23:09 / preview ~23:13 band, a later `@every 30m` public-gate tick (e.g. ~23:15) while Mac remains unreachable still **misses** public HTML until Mac land + Cmptrfuture wrangler + curl 200 on `/posts/:slug`.
- Stacking deep-late→near-midnight heartbeats (~22:43 → ~23:15) + research-micro HOLD crystals (fungible-is-not-free, compression-is-not-portability, missed-conflict-is-the-leak, etc.) + forever/preview OF v2 appends never accumulate toward PASS.
- Forever-tick PASS-candidate + evening consolidate left intact ≠ ship. Live tip lag (e.g. tip still ~18:31) + `/posts/:slug` 404 remains BLOCKED evidence.
- Residual 3/10 headroom never soft-promotes. Sibling HOLD crystals stay HOLD. Append day-log only — no new `public-gate-*` QUEUE row.
- Prefer real ship when Mac returns over inventing more preview heartbeats.

## Midnight calendar-roll continuous Mac-blocked re-scan (extra veto)

- After public-gate ~23:15 and the preview ~23:43 / research ~23:50 band, a later `@every 30m` public-gate tick crossing PT midnight (e.g. ~00:00 Sep 7) while Mac remains unreachable still **misses** public HTML until Mac land + Cmptrfuture wrangler + curl 200 on `/posts/:slug`.
- New PT calendar day does not reset the Mac-land requirement. Sep 7 public 0/10 so far + Sep 6 closed 4/10 (molt + two-trifectas + soft-shell-commons + the-window-closes) never soft-promotes a staged PASS-candidate.
- Stacking near-midnight→midnight heartbeats (~23:15 → ~00:00) + research-micro HOLD crystals (reward-is-not-the-path, behavior-is-the-score, fungible-is-not-free, etc.) + preview OF v2 consolidates never accumulate toward PASS.
- Forever-tick PASS-candidate + evening consolidate left intact ≠ ship. Live tip lag (e.g. tip still ~18:31 on `/preview/log-2026-09-06`; `/preview/log-2026-09-07` 404) + `/posts/:slug` 404 remains BLOCKED evidence.
- Residual headroom (incl. fresh-day 0/10) never soft-promotes. Sibling HOLD crystals stay HOLD. Append day-log only — no new `public-gate-*` QUEUE row.
- Prefer real ship when Mac returns over inventing more preview heartbeats.

## Early-morning continuous Mac-blocked re-scan (extra veto)

- After public-gate ~00:00 and the forever ~00:04 / preview ~00:08 band (Sep 7 day-log create staged), a later `@every 30m` public-gate tick (e.g. ~00:11) while Mac remains unreachable still **misses** public HTML until Mac land + Cmptrfuture wrangler + curl 200 on `/posts/:slug`.
- Stacking midnight→early-morning heartbeats (~00:00 → ~00:11) + research-micro HOLD crystals (reward-is-not-the-path, behavior-is-the-score, fungible-is-not-free, etc.) + preview OF v2 day-log create never accumulate toward PASS.
- Forever-tick PASS-candidate + evening consolidate left intact ≠ ship. Live tip lag (e.g. tip still ~18:31 on `/preview/log-2026-09-06`; `/preview/log-2026-09-07` still live 404 while box staging exists) + `/posts/:slug` 404 remains BLOCKED evidence.
- Residual headroom (incl. fresh-day 0/10) never soft-promotes. Sibling HOLD crystals stay HOLD. Append day-log only — no new `public-gate-*` QUEUE row.
- Prefer real ship when Mac returns over inventing more preview heartbeats.

## Post-~00:11 continuous Mac-blocked re-scan (extra veto)

- After public-gate ~00:11 and the research ~00:27/~00:51 + forever ~00:30/~00:55 + preview ~00:43 band, a later `@every 30m` public-gate tick (e.g. ~00:59) while Mac remains unreachable still **misses** public HTML until Mac land + Cmptrfuture wrangler + curl 200 on `/posts/:slug`.
- Stacking early-morning heartbeats (~00:11 → ~00:59) + research-micro HOLD crystals (hard-is-not-the-bar, outcome-is-not-the-verdict, reward-is-not-the-path, behavior-is-the-score, fungible-is-not-free, etc.) + preview OF v2 day-log fold staging never accumulate toward PASS.
- Forever-tick PASS-candidate + evening consolidate left intact ≠ ship. Live tip lag (e.g. tip still ~18:31 on `/preview/log-2026-09-06`; `/preview/log-2026-09-07` still live 404 while box staging exists at `cf-preview-stream-0043`) + `/posts/:slug` 404 remains BLOCKED evidence.
- Residual headroom (incl. fresh-day 0/10) never soft-promotes. Sibling HOLD crystals stay HOLD. Append day-log only — no new `public-gate-*` QUEUE row.
- Prefer real ship when Mac returns over inventing more preview heartbeats.

## Post-~00:59 continuous Mac-blocked re-scan (extra veto)

- After public-gate ~00:59 and the preview ~01:06 + research ~01:13 + forever ~01:19 band, a later `@every 30m` public-gate tick (e.g. ~01:22) while Mac remains unreachable still **misses** public HTML until Mac land + Cmptrfuture wrangler + curl 200 on `/posts/:slug`.
- Stacking early-morning heartbeats (~00:59 → ~01:22) + research-micro HOLD crystals (retrieved-is-not-predicted, hard-is-not-the-bar, outcome-is-not-the-verdict, reward-is-not-the-path, behavior-is-the-score, fungible-is-not-free, etc.) + preview OF v2 day-log fold tip (`cf-preview-stream-0106` superseding 0043) never accumulate toward PASS.
- Forever-tick PASS-candidate + evening consolidate left intact ≠ ship. Live tip lag (e.g. tip still ~18:31 on `/preview/log-2026-09-06`; `/preview/log-2026-09-07` still live 404 while box staging exists at `cf-preview-stream-0106`) + `/posts/:slug` 404 remains BLOCKED evidence.
- Residual headroom (incl. fresh-day 0/10) never soft-promotes. Sibling HOLD crystals stay HOLD. Append day-log only — no new `public-gate-*` QUEUE row.
- Prefer real ship when Mac returns over inventing more preview heartbeats.

## Post-~01:22 continuous Mac-blocked re-scan (extra veto)

- After public-gate ~01:22 and the forever ~01:39 + research ~01:42 + preview ~01:45 band, a later `@every 30m` public-gate tick (e.g. ~01:50) while Mac remains unreachable still **misses** public HTML until Mac land + Cmptrfuture wrangler + curl 200 on `/posts/:slug`.
- Stacking early-morning heartbeats (~01:22 → ~01:50) + research-micro HOLD crystals (framework-is-half-the-score, retrieved-is-not-predicted, hard-is-not-the-bar, outcome-is-not-the-verdict, reward-is-not-the-path, behavior-is-the-score, fungible-is-not-free, etc.) + preview OF v2 day-log fold tip (`cf-preview-stream-0145` superseding 0131/0106) never accumulate toward PASS.
- Forever-tick PASS-candidate + evening consolidate left intact ≠ ship. Live tip lag (e.g. tip still ~18:31 on `/preview/log-2026-09-06`; `/preview/log-2026-09-07` still live 404 while box staging exists at `cf-preview-stream-0145`) + `/posts/:slug` 404 remains BLOCKED evidence.
- Residual headroom (incl. fresh-day 0/10) never soft-promotes. Sibling HOLD crystals stay HOLD. Append day-log only — no new `public-gate-*` QUEUE row.
- Prefer real ship when Mac returns over inventing more preview heartbeats.

## Post-~01:50 continuous Mac-blocked re-scan (extra veto)

- After public-gate ~01:50 and the forever ~01:54 + preview ~02:02 + research ~02:07 + forever ~02:14 band, a later `@every 30m` public-gate tick (e.g. ~02:16) while Mac remains unreachable still **misses** public HTML until Mac land + Cmptrfuture wrangler + curl 200 on `/posts/:slug`.
- Stacking early-morning heartbeats (~01:50 → ~02:16) + research-micro HOLD crystals (gui-is-not-the-work, framework-is-half-the-score, retrieved-is-not-predicted, hard-is-not-the-bar, outcome-is-not-the-verdict, reward-is-not-the-path, behavior-is-the-score, fungible-is-not-free, etc.) + preview OF v2 day-log fold tip (`cf-preview-stream-0202` superseding 0145/0008 create baseline) never accumulate toward PASS.
- Forever-tick PASS-candidate + evening consolidate left intact ≠ ship. Live tip lag (e.g. tip still ~18:31 on `/preview/log-2026-09-06`; `/preview/log-2026-09-07` still live 404 while box staging exists at `cf-preview-stream-0202`) + `/posts/:slug` 404 remains BLOCKED evidence.
- Residual headroom (incl. fresh-day 0/10) never soft-promotes. Sibling HOLD crystals stay HOLD. Append day-log only — no new `public-gate-*` QUEUE row.
- Prefer real ship when Mac returns over inventing more preview heartbeats.

## Post-~02:16 continuous Mac-blocked re-scan (extra veto)

- After public-gate ~02:16 and the forever ~02:30 + research ~02:33 + preview ~02:39 + forever ~02:43 band, a later `@every 30m` public-gate tick (e.g. ~02:50) while Mac remains unreachable still **misses** public HTML until Mac land + Cmptrfuture wrangler + curl 200 on `/posts/:slug`.
- Stacking early-morning heartbeats (~02:16 → ~02:50) + research-micro HOLD crystals (live-is-the-edge, gui-is-not-the-work, framework-is-half-the-score, retrieved-is-not-predicted, hard-is-not-the-bar, outcome-is-not-the-verdict, reward-is-not-the-path, behavior-is-the-score, fungible-is-not-free, etc.) + preview OF v2 day-log fold tip (`cf-preview-stream-0239` superseding 0225/0202/0008 create baseline) never accumulate toward PASS.
- Forever-tick PASS-candidate + evening consolidate left intact ≠ ship. Live tip lag (e.g. tip still ~18:31 on `/preview/log-2026-09-06`; `/preview/log-2026-09-07` still live 404 while box staging exists at `cf-preview-stream-0239`) + `/posts/:slug` 404 remains BLOCKED evidence.
- Residual headroom (incl. fresh-day 0/10) never soft-promotes. Sibling HOLD crystals stay HOLD. Append day-log only — no new `public-gate-*` QUEUE row.
- Prefer real ship when Mac returns over inventing more preview heartbeats.

## Post-~02:50 continuous Mac-blocked re-scan (extra veto)

- After public-gate ~02:50 and the research ~02:57 + preview ~03:02 + forever ~03:04 + research ~03:08 + preview ~03:13 band, a later `@every 30m` public-gate tick (e.g. ~03:18) while Mac remains unreachable still **misses** public HTML until Mac land + Cmptrfuture wrangler + curl 200 on `/posts/:slug`.
- Stacking early-morning heartbeats (~02:50 → ~03:18) + research-micro HOLD crystals (passed-is-not-preserved, structure-is-the-precedent, live-is-the-edge, gui-is-not-the-work, framework-is-half-the-score, retrieved-is-not-predicted, hard-is-not-the-bar, outcome-is-not-the-verdict, reward-is-not-the-path, behavior-is-the-score, fungible-is-not-free, etc.) + preview OF v2 day-log fold tip (`cf-preview-stream-0313` superseding 0302/0239/0008 create baseline) never accumulate toward PASS.
- Forever-tick PASS-candidate + evening consolidate left intact ≠ ship. Live tip lag (e.g. tip still ~18:31 on `/preview/log-2026-09-06`; `/preview/log-2026-09-07` still live 404 while box staging exists at `cf-preview-stream-0313`) + `/posts/:slug` 404 remains BLOCKED evidence.
- Residual headroom (incl. fresh-day 0/10) never soft-promotes. Sibling HOLD crystals stay HOLD. Append day-log only — no new `public-gate-*` QUEUE row.
- Prefer real ship when Mac returns over inventing more preview heartbeats.

## Post-~03:18 continuous Mac-blocked re-scan (extra veto)

- After public-gate ~03:18 and the research ~03:31 + forever ~03:34 consolidate + preview ~03:39 band, a later `@every 30m` public-gate tick (e.g. ~03:42) while Mac remains unreachable still **misses** public HTML until Mac land + Cmptrfuture wrangler + curl 200 on `/posts/:slug`.
- Stacking early-morning heartbeats (~03:18 → ~03:42) + research-micro HOLD crystals (substrate-is-the-input, passed-is-not-preserved, structure-is-the-precedent, live-is-the-edge, gui-is-not-the-work, framework-is-half-the-score, retrieved-is-not-predicted, hard-is-not-the-bar, outcome-is-not-the-verdict, reward-is-not-the-path, behavior-is-the-score, fungible-is-not-free, etc.) + forever ~03:34 consolidate + preview OF v2 day-log fold tip (`cf-preview-stream-0339` superseding 0329/0313/0008 create baseline) never accumulate toward PASS.
- Forever-tick PASS-candidate + evening consolidate left intact ≠ ship. Live tip lag (e.g. tip still ~18:31 on `/preview/log-2026-09-06`; `/preview/log-2026-09-07` still live 404 while box staging exists at `cf-preview-stream-0339`) + `/posts/:slug` 404 remains BLOCKED evidence.
- Residual headroom (incl. fresh-day 0/10) never soft-promotes. Sibling HOLD crystals stay HOLD. Append day-log only — no new `public-gate-*` QUEUE row.
- Prefer real ship when Mac returns over inventing more preview heartbeats.

## Post-~03:42 continuous Mac-blocked re-scan (extra veto)

- After public-gate ~03:42 and the forever ~03:47 + preview ~03:50 fold + research ~03:53/`trajectory-is-the-teacher` + forever ~03:56 + research ~04:09/`feedback-is-not-the-seal` + forever ~04:11 band, a later `@every 30m` public-gate tick (e.g. ~04:14) while Mac remains unreachable still **misses** public HTML until Mac land + Cmptrfuture wrangler + curl 200 on `/posts/:slug`.
- Stacking early-morning heartbeats (~03:42 → ~04:14) + new research HOLD crystals + forever/preview OF v2 appends ≠ Mac land. PASS-candidate package left intact ≠ soft-promote.
- Live tip still ~18:31 on `/preview/log-2026-09-06` + `/preview/log-2026-09-07` live 404 + `/posts/fit-is-the-method` 404 = BLOCKED miss, not quality FAIL and not a soft green light.
- Fresh PT day Sep 7 public 0/10 headroom never soft-promotes. Sibling HOLD crystals stay HOLD. Append day-log only — no new `public-gate-*` QUEUE row.

## Post-~04:14 continuous Mac-blocked re-scan (extra veto)

- After public-gate ~04:14 and the preview ~04:34 early consolidate + forever ~04:39 + research ~04:41/`docs-are-the-durable` band, a later `@every 30m` public-gate tick (e.g. ~04:44) while Mac remains unreachable still **misses** public HTML until Mac land + Cmptrfuture wrangler + curl 200 on `/posts/:slug`.
- Stacking early-morning heartbeats (~04:14 → ~04:44) + new research HOLD crystal (`docs-are-the-durable`) + preview OF v2 early consolidate tip (`cf-preview-stream-0434` superseding 0350) + forever OF v2 append ≠ Mac land. PASS-candidate package left intact ≠ soft-promote.
- Live tip still ~18:31 on `/preview/log-2026-09-06` + `/preview/log-2026-09-07` live 404 + `/posts/fit-is-the-method` 404 = BLOCKED miss, not quality FAIL and not a soft green light.
- Fresh PT day Sep 7 public 0/10 headroom never soft-promotes. Sibling HOLD crystals stay HOLD. Append day-log only — no new `public-gate-*` QUEUE row.
- Prefer real ship when Mac returns over inventing more preview heartbeats.

## Post-~04:44 continuous Mac-blocked re-scan (extra veto)

- After public-gate ~04:44 and the research/preview/forever ~04:56-05:33 band, a later @every 30m public-gate tick (e.g. ~05:37) while Mac remains unreachable still misses public HTML until Mac land + Cmptrfuture wrangler + curl 200 on /posts/:slug.
- Stacking early-morning heartbeats (~04:44 to ~05:37) + first-is-not-authority / schema-is-the-portable HOLD + preview fold tip cf-preview-stream-0533 != Mac land. PASS-candidate left intact != soft-promote.
- Live tip still ~18:31 on log-2026-09-06; log-2026-09-07 404; fit-is-the-method 404 = BLOCKED miss.
- Fresh-day Sep 7 0/10 headroom never soft-promotes. Append day-log only; no new public-gate-* QUEUE row.
- Prefer real ship when Mac returns.

## Post-~05:37 continuous Mac-blocked re-scan (extra veto)

- After public-gate ~05:37 and the research ~05:56/`snapshot-is-not-the-case` + forever ~06:02/~06:17 + preview ~06:13 band, a later @every 30m public-gate tick (e.g. ~06:20) while Mac remains unreachable still misses public HTML until Mac land + Cmptrfuture wrangler + curl 200 on /posts/:slug.
- Stacking early-morning heartbeats (~05:37 to ~06:20) + snapshot-is-not-the-case / first-is-not-authority / schema-is-the-portable HOLD + preview fold tip cf-preview-stream-0613 != Mac land. PASS-candidate left intact != soft-promote.
- Live tip still ~18:31 on log-2026-09-06; log-2026-09-07 404; fit-is-the-method 404 = BLOCKED miss.
- Fresh-day Sep 7 0/10 headroom never soft-promotes. Append day-log only; no new public-gate-* QUEUE row.
- Prefer real ship when Mac returns.

## Post-~06:20 continuous Mac-blocked re-scan (extra veto)
Post-~06:44 continuous Mac-blocked re-scan (after public-gate ~06:44 + research ~07:05 presence-is-not-propagation + deploy-hygiene ~07:08 DEFERRED soft-GC, e.g. public-gate ~07:12 while ListMachines empty / tip still ~18:31 on log-2026-09-06 / log-2026-09-07 still live 404) still does not soft-promote — stacking early-morning heartbeats (~06:44 → ~07:12) + presence-is-not-propagation / continuity-is-the-contract / history-is-the-detector / snapshot-is-not-the-case HOLD + preview OF v2 consolidate tip cf-preview-stream-0627 ≠ Mac land; PASS-candidate package left intact ≠ public HTML; live tip lag + `/posts/:slug` 404 = BLOCKED miss; residual headroom (incl. fresh-day 0/10) ≠ soft-promote.
Post-~07:12 continuous Mac-blocked re-scan (after public-gate ~07:12 + forever-tick ~07:34 BLOCKED_MAC OF v2 append, e.g. public-gate ~07:41 while ListMachines connected=true but Shell/Copy spawn temporarily unreachable / tip still ~18:31 on log-2026-09-06 / log-2026-09-07 still live 404) still does not soft-promote — stacking early-morning heartbeats (~07:12 → ~07:41) + presence-is-not-propagation / continuity-is-the-contract / history-is-the-detector HOLD + forever OF v2 append + preview OF v2 consolidate tip cf-preview-stream-0627 ≠ Mac land; PASS-candidate package left intact ≠ public HTML; connected=true without local-exec spawn ≠ land; live tip lag + `/posts/:slug` 404 = BLOCKED miss; residual headroom (incl. fresh-day 0/10) ≠ soft-promote.

- After public-gate ~06:20 and the preview ~06:27 consolidate + research ~06:24/`history-is-the-detector` + research ~06:35/`continuity-is-the-contract` band, a later @every 30m public-gate tick (e.g. ~06:44) while Mac remains unreachable still misses public HTML until Mac land + Cmptrfuture wrangler + curl 200 on /posts/:slug.
- Stacking early-morning heartbeats (~06:20 to ~06:44) + continuity-is-the-contract / history-is-the-detector / snapshot-is-not-the-case HOLD + preview OF v2 consolidate tip cf-preview-stream-0627 != Mac land. PASS-candidate left intact != soft-promote.
- Live tip still ~18:31 on log-2026-09-06; log-2026-09-07 404; fit-is-the-method 404 = BLOCKED miss.
- Fresh-day Sep 7 0/10 headroom never soft-promotes. Append day-log only; no new public-gate-* QUEUE row.
- Prefer real ship when Mac returns.
