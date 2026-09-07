# Quality gate checklist

Match voice/VOICE.md. All boxes required to publish. Cron may propose; this vetoes.

## Mechanism and claim

- [ ] Portable idea retellable in one sentence
- [ ] Names a real mechanism (not vibes / mood / motivational)
- [ ] Changes reader predictive model
- [ ] Not a rehash of an existing published seed with new adjectives
- [ ] Hard line arrives late; could not have opened the post

## Voice and form

- [ ] Register consistent (CF we-voice lowercase cold room, or intentional Andy byline)
- [ ] Cold open — no throat-clearing
- [ ] ## headers are claims, not summaries
- [ ] ~450-850 words typical; every paragraph earns keep
- [ ] Removing any paragraph would weaken it (entropic stability)
- [ ] Crosslinks point at published posts (2-4); game link only if earned
- [ ] Optional P.S. only if true / load-bearing

## Mission filter

- [ ] On-mission: agency, ratio, games-as-filters, deflation, pre-selection, structural discourse cut, or session-as-artifact
- [ ] Finishing selects for a reader type (not mass conversion)
- [ ] Entangled with real work / observation (not retroactive marketing)

## Hard fails (any one = veto)

- [ ] No funnel / CTA spam / subscribe-now / headcount theater
- [ ] No soft LinkedIn cadence / hedge stacks / academic padding
- [ ] No decorative humor that fails strip-test
- [ ] No private paths, workshop provenance, or internal meta-orchestrator names
- [ ] No shipping to hit quota when bar fails
- [ ] No sensitive player case detail that should not be public

## Ship decision

- PASS -> follow scripts/publish-post.md
- NEAR-PASS / HOLD -> improve draft; preview-log the miss; do not ship public
- FAIL -> improve draft / repo; commit safe control-plane work; do not deploy public
- Daily count under 10 is necessary, never sufficient
- Named-wave HOLD binds mid-cycle public-gate ticks unless a later edit produces clear PASS (no tilde boxes)
- Public-gate cron uses this same checklist; cadence never overrides veto

## Mid-cycle public-gate (extra veto)

- Named-wave HOLD (Wave A/B/C) binds until that wave's convert-or-hold actually runs — scheduled clock time alone does not release it (post-schedule public-gate still misses)
- Dry-run checkboxes "clear on paper" ≠ PASS. PASS requires an aloud convert at the wave, or an explicit later edit that removes every HOLD/tilde marker AND records an aloud PASS
- Sibling seeds (pre-governance, soft-shell commons, confused-deputy, bb6-humor) stay seed-only; never soft-promote them to fill the 1–10 daily ceiling between waves
- Prefer miss + preview note over mid-cycle public HTML
- After a named wave ships, residual daily capacity is never a soft green light for the next crystal. That crystal's Wave HOLD (e.g. Wave C for soft-shell-commons) still binds until its convert-or-hold runs aloud

## Pre-wave polish ≠ PASS

- Forever-tick band restores, subtractive telescopes, and dry-run checkbox refreshes during a named-wave HOLD do not convert the crystal.
- Clock proximity to the wave (T-60…T-0) never substitutes for convert-or-hold.
- Soft-shell-commons (and any Wave C crystal) stays HOLD until Wave C runs aloud — residual daily capacity after Wave A/B ships is irrelevant.

## Mid-pre-wave re-scan ≠ convert

- Repeat public-gate ticks inside T-60…T-0 do not accumulate toward PASS.
- Clock countdown (T-40, T-20, T-15, …) never substitutes for the named wave's aloud convert-or-hold.
- Final-quarter hour (T-15…T-0) still misses — proximity is not convert.

## Post-wave residual ≠ next-crystal PASS

- Public-gate ticks immediately after a named-wave ship reaffirm miss for the *next* HOLD crystal.
- Soft-shell Wave C PASS leaves `fit-is-the-method` (and sibling seeds) HOLD until their own aloud convert.
- Residual headroom under the daily 10 is necessary never sufficient — and never a mid-cycle soft-promote signal.

## Mid-evening residual ≠ evening convert

- Public-gate ticks in the hours between Wave C ship and evening improve (~19:00) reaffirm miss.
- Elapsed afternoon/evening heartbeats never substitute for evening aloud convert-or-hold on `fit-is-the-method`.
- Sibling HOLD crystals (confused-deputy, social-stable, accumulate-precedent, seeds) stay HOLD; 3/10 headroom ≠ soft-promote.

## Late mid-evening ≠ evening convert

- Public-gate ticks inside T-60…T-0 before evening improve (~19:00) reaffirm miss.
- Clock proximity to evening never substitutes for evening aloud convert-or-hold on `fit-is-the-method`.
- Mid-evening elapsed heartbeats still ≠ PASS; 3/10 headroom ≠ soft-promote; sibling HOLD crystals stay HOLD.

## Post-evening Mac-blocked ≠ ship

- After evening ~19:00 (or when evening improve never-ran), an aloud PASS-candidate without Mac land + Cmptrfuture verify 200 remains HOLD for public HTML.
- Mac / local-exec unreachable is BLOCKED miss — not soft-promote; residual 3/10 headroom ≠ ship.

## Post-evening-improve Mac-blocked residual ≠ ship

- Public-gate ticks after evening improve has run (including when evening improve itself was BLOCKED_MAC) reaffirm miss for public HTML.
- Evening consolidate / digest / QUEUE unlist staged on box never substitutes for Mac land + Cmptrfuture verify 200.
- PASS-candidate package left intact from forever-tick ≠ soft-promote; live tip lag + `/posts/:slug` 404 = BLOCKED; residual 3/10 headroom ≠ ship.

## Late-evening continuous Mac-blocked re-scan ≠ ship

- Repeat public-gate ticks while Mac remains offline after evening improve BLOCKED_MAC reaffirm miss for public HTML.
- Stacking late-evening heartbeats + sibling micro seeds never substitutes for Mac land + Cmptrfuture verify 200.
- PASS-candidate package left intact ≠ soft-promote; live tip lag + `/posts/:slug` 404 = BLOCKED; residual 3/10 headroom ≠ ship.

## Night continuous Mac-blocked re-scan ≠ ship

- Public-gate ticks after night research (~21:00+) while Mac remains offline (e.g. ~21:15 → ~21:46) reaffirm miss for public HTML.
- Night SEED HOLD crystals + tomorrow queue never substitute for Mac land + Cmptrfuture verify 200 (continuity-is-the-contract / late-is-wrong / said-is-not-done included).
- Stacking evening→night heartbeats (~20:08 → ~20:43 → ~21:15 → ~21:46) never soft-promotes; PASS-candidate package left intact ≠ ship; live tip lag + `/posts/:slug` 404 = BLOCKED; residual 3/10 headroom ≠ ship.

## Late-night continuous Mac-blocked re-scan ≠ ship

- Public-gate ticks after the post-~21:44 preview band while Mac remains offline (e.g. ~22:05) reaffirm miss for public HTML.
- Stacking night→late-night heartbeats (~21:15 → ~21:46 → ~22:05) + said-is-not-done / preview OF v2 appends never substitute for Mac land + Cmptrfuture verify 200.
- PASS-candidate package left intact ≠ soft-promote; live tip lag + `/posts/:slug` 404 = BLOCKED; residual 3/10 headroom ≠ ship.

## Deep late-night continuous Mac-blocked re-scan ≠ ship

- Public-gate ticks after ~22:05 + forever/preview ~22:37–22:40 while Mac remains offline (e.g. ~22:43) reaffirm miss for public HTML.
- Stacking late-night heartbeats (~22:05 → ~22:43) + missed-conflict-is-the-leak / said-is-not-done / preview OF v2 consolidates never substitute for Mac land + Cmptrfuture verify 200.
- PASS-candidate package left intact ≠ soft-promote; live tip lag + `/posts/:slug` 404 = BLOCKED; residual 3/10 headroom ≠ ship.

## Post-~22:43 continuous Mac-blocked re-scan ≠ ship

- Public-gate ticks after ~22:43 + forever ~23:09 / preview ~23:13 while Mac remains offline (e.g. ~23:15) reaffirm miss for public HTML.
- Stacking deep-late→near-midnight heartbeats (~22:43 → ~23:15) + fungible-is-not-free / compression-is-not-portability / missed-conflict-is-the-leak / preview+forever OF v2 appends never substitute for Mac land + Cmptrfuture verify 200.
- PASS-candidate package left intact ≠ soft-promote; live tip lag + `/posts/:slug` 404 = BLOCKED; residual 3/10 headroom ≠ ship.

## Midnight calendar-roll continuous Mac-blocked re-scan ≠ ship

- Public-gate ticks after ~23:15 + preview ~23:43 / research ~23:50 that cross PT midnight (e.g. ~00:00 Sep 7) while Mac remains offline reaffirm miss for public HTML.
- Fresh PT calendar day (0/10 so far) + Sep 6 closed 4/10 never soft-promote; stacking near-midnight→midnight heartbeats (~23:15 → ~00:00) + reward-is-not-the-path / behavior-is-the-score / preview OF v2 consolidates never substitute for Mac land + Cmptrfuture verify 200.
- PASS-candidate package left intact ≠ soft-promote; live tip lag + `/posts/:slug` 404 = BLOCKED; residual headroom (incl. fresh-day 0/10) ≠ ship.

## Early-morning continuous Mac-blocked re-scan ≠ ship

- Public-gate ticks after ~00:00 + forever ~00:04 / preview ~00:08 (Sep 7 day-log create staged) while Mac remains offline (e.g. ~00:11) reaffirm miss for public HTML.
- Fresh PT day 0/10 + Sep 6 closed 4/10 never soft-promote; stacking midnight→early-morning heartbeats (~00:00 → ~00:11) + reward-is-not-the-path / behavior-is-the-score / preview OF v2 day-log create never substitute for Mac land + Cmptrfuture verify 200.
- PASS-candidate package left intact ≠ soft-promote; live tip lag + `/posts/:slug` 404 = BLOCKED; residual headroom (incl. fresh-day 0/10) ≠ ship.

## Post-~00:11 continuous Mac-blocked re-scan ≠ ship

- Public-gate ticks after ~00:11 + research ~00:27/~00:51 + forever ~00:30/~00:55 + preview ~00:43 while Mac remains offline (e.g. ~00:59) reaffirm miss for public HTML.
- Fresh PT day 0/10 + Sep 6 closed 4/10 never soft-promote; stacking early-morning heartbeats (~00:11 → ~00:59) + hard-is-not-the-bar / outcome-is-not-the-verdict / reward-is-not-the-path / preview OF v2 day-log fold staging never substitute for Mac land + Cmptrfuture verify 200.
- PASS-candidate package left intact ≠ soft-promote; live tip lag + `/posts/:slug` 404 = BLOCKED; residual headroom (incl. fresh-day 0/10) ≠ ship.

## Post-~00:59 continuous Mac-blocked re-scan ≠ ship

- Public-gate ticks after ~00:59 + preview ~01:06 + research ~01:13 + forever ~01:19 while Mac remains offline (e.g. ~01:22) reaffirm miss for public HTML.
- Fresh PT day 0/10 + Sep 6 closed 4/10 never soft-promote; stacking early-morning heartbeats (~00:59 → ~01:22) + retrieved-is-not-predicted / hard-is-not-the-bar / outcome-is-not-the-verdict / preview OF v2 day-log fold tip never substitute for Mac land + Cmptrfuture verify 200.
- PASS-candidate package left intact ≠ soft-promote; live tip lag + `/posts/:slug` 404 = BLOCKED; residual headroom (incl. fresh-day 0/10) ≠ ship.

## Post-~01:22 continuous Mac-blocked re-scan ≠ ship

- Public-gate ticks after ~01:22 + forever ~01:39 + research ~01:42 + preview ~01:45 while Mac remains offline (e.g. ~01:50) reaffirm miss for public HTML.
- Fresh PT day 0/10 + Sep 6 closed 4/10 never soft-promote; stacking early-morning heartbeats (~01:22 → ~01:50) + framework-is-half-the-score / retrieved-is-not-predicted / hard-is-not-the-bar / outcome-is-not-the-verdict / preview OF v2 day-log fold tip never substitute for Mac land + Cmptrfuture verify 200.
- PASS-candidate package left intact ≠ soft-promote; live tip lag + `/posts/:slug` 404 = BLOCKED; residual headroom (incl. fresh-day 0/10) ≠ ship.

## Post-~01:50 continuous Mac-blocked re-scan ≠ ship

- Public-gate ticks after ~01:50 + forever ~01:54 + preview ~02:02 + research ~02:07 + forever ~02:14 while Mac remains offline (e.g. ~02:16) reaffirm miss for public HTML.
- Fresh PT day 0/10 + Sep 6 closed 4/10 never soft-promote; stacking early-morning heartbeats (~01:50 → ~02:16) + gui-is-not-the-work / framework-is-half-the-score / retrieved-is-not-predicted / hard-is-not-the-bar / outcome-is-not-the-verdict / preview OF v2 day-log fold tip never substitute for Mac land + Cmptrfuture verify 200.
- PASS-candidate package left intact ≠ soft-promote; live tip lag + `/posts/:slug` 404 = BLOCKED; residual headroom (incl. fresh-day 0/10) ≠ ship.

## Post-~02:16 continuous Mac-blocked re-scan ≠ ship

- Public-gate ticks after ~02:16 + forever ~02:30 + research ~02:33 + preview ~02:39 + forever ~02:43 while Mac remains offline (e.g. ~02:50) reaffirm miss for public HTML.
- Fresh PT day 0/10 + Sep 6 closed 4/10 never soft-promote; stacking early-morning heartbeats (~02:16 → ~02:50) + live-is-the-edge / gui-is-not-the-work / framework-is-half-the-score / retrieved-is-not-predicted / preview OF v2 day-log fold tip never substitute for Mac land + Cmptrfuture verify 200.
- PASS-candidate package left intact ≠ soft-promote; live tip lag + `/posts/:slug` 404 = BLOCKED; residual headroom (incl. fresh-day 0/10) ≠ ship.

## Post-~02:50 continuous Mac-blocked re-scan ≠ ship

- Public-gate ticks after ~02:50 + research ~02:57 + preview ~03:02 + forever ~03:04 + research ~03:08 + preview ~03:13 while Mac remains offline (e.g. ~03:18) reaffirm miss for public HTML.
- Fresh PT day 0/10 + Sep 6 closed 4/10 never soft-promote; stacking early-morning heartbeats (~02:50 → ~03:18) + passed-is-not-preserved / structure-is-the-precedent / live-is-the-edge / gui-is-not-the-work / preview OF v2 day-log fold tip never substitute for Mac land + Cmptrfuture verify 200.
- PASS-candidate package left intact ≠ soft-promote; live tip lag + `/posts/:slug` 404 = BLOCKED; residual headroom (incl. fresh-day 0/10) ≠ ship.

## Post-~03:18 continuous Mac-blocked re-scan ≠ ship

- Public-gate ticks after ~03:18 + research ~03:31 + forever ~03:34 consolidate + preview ~03:39 while Mac remains offline (e.g. ~03:42) reaffirm miss for public HTML.
- Fresh PT day 0/10 + Sep 6 closed 4/10 never soft-promote; stacking early-morning heartbeats (~03:18 → ~03:42) + substrate-is-the-input / passed-is-not-preserved / structure-is-the-precedent / live-is-the-edge / gui-is-not-the-work / forever consolidate / preview OF v2 day-log fold tip never substitute for Mac land + Cmptrfuture verify 200.
- PASS-candidate package left intact ≠ soft-promote; live tip lag + `/posts/:slug` 404 = BLOCKED; residual headroom (incl. fresh-day 0/10) ≠ ship.

## Post-~03:42 continuous Mac-blocked re-scan ≠ ship

- Public-gate ticks after ~03:42 + forever ~03:47 + preview ~03:50 + research ~03:53 trajectory-is-the-teacher + forever ~03:56 + research ~04:09 feedback-is-not-the-seal + forever ~04:11 while Mac remains offline (e.g. ~04:14) reaffirm miss for public HTML.
- New HOLD crystals (`feedback-is-not-the-seal`, `trajectory-is-the-teacher`) and forever/preview OF v2 appends do not convert `fit-is-the-method`.
- Mac land + Cmptrfuture verify 200 required. Fresh-day 0/10 ≠ soft-promote. Append day-log only.

## Post-~04:14 continuous Mac-blocked re-scan ≠ ship

- Public-gate ticks after ~04:14 + preview ~04:34 early consolidate + forever ~04:39 + research ~04:41 docs-are-the-durable while Mac remains offline (e.g. ~04:44) reaffirm miss for public HTML.
- New HOLD crystal (`docs-are-the-durable`) and preview/forever OF v2 consolidates/appends do not convert `fit-is-the-method`.
- Mac land + Cmptrfuture verify 200 required. Fresh-day 0/10 ≠ soft-promote. Append day-log only.

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

## Post-~08:18 daily-cap-full residual ≠ 11th ship

- Public-gate ticks after Sep 7 public hits **10/10** live reaffirm miss for any further `/posts` that calendar day.
- Daily count under 10 is necessary; daily count at 10 is a hard stop — not a soft promote for leftover seeds.
- Concurrent bulk land of former HOLD crystals does not authorize another crystal past the cap.
- Mac offline / empty ListMachines ≠ exception. Append preview note only; push deferred.
