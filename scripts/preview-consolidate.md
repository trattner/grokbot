# Preview consolidate runbook

When forever-tick / preview-stream noise piles up, consolidate instead of adding more rows.

## Triggers

- ~**20** new micro QUEUE rows since last digest (`CONSOLIDATE_EVERY=20`), or
- `/preview` feels unscannable (Andy can't skim in <10s)

## Steps

1. **Day log** — create or open `src/posts/queue/YYYY-MM-DD-log.js`  
   - slug: `log-YYYY-MM-DD`  
   - **Append at top** (newest first), separate ticks with `<hr />`  
   - Optional: `<details><summary>internal</summary>…</details>` for SHA dumps

2. **Digest** — write/update `src/posts/queue/YYYY-MM-DD-digest.js`  
   - slug: `digest-YYYY-MM-DD`  
   - Human prose of what mattered (not a dump)  
   - Target **1** digest; optionally **1** theme digest; else **0** second

3. **Unlist noise** from `QUEUE_POSTS` in `src/index.js`  
   - Patterns: `forever-tick-*`, `preview-stream-*` (except a named UX note), `sha-trail-*`, `hold-next-*`, `research-micro-*`, `public-gate-*`, `stream-tick-*`  
   - Move files to `src/posts/queue/_archive/` (or leave unwired on disk)  
   - Keep named substantive notes if still useful; otherwise fold into digest

4. **Wire** digest + log imports near top of `QUEUE_POSTS` (primary)

5. **Commit + deploy** both repos if policy/docs changed  
   - Site: computerfuture-me  
   - Control plane: `~/g/grokbot` (`ops/preview-policy.md`, this runbook)  
   - Deploy: `~/g/grokbot/scripts/deploy-site.sh` (Cmptrfuture token from `~/g/grokbot/.env` only)

6. **Verify**  
   - `/preview` shows digests/logs primary; far fewer top-level rows  
   - `/preview/log-YYYY-MM-DD` and `/preview/digest-YYYY-MM-DD` live  
   - Old heartbeat slugs 404 or unwired (OK)

## Do not

- Touch public `/posts` quality gate
- Re-wire archived heartbeats "for completeness"
- Notify Andy loudly for routine consolidates (parent decides)
