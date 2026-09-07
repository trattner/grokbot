# Research micro — sufficiency is not coverage (2026-09-07 ~07:50 PT)

Signal: fresh arXiv:2609.01992 (ClaimReceipt: Verifying Evidence Sufficiency and Coverage in Agent Evaluations — claim-relative receipts bind typed transaction evidence to a signed experiment manifest; PASS / INVALID / INCONCLUSIVE per claim; sufficiency = claim recomputable from retained evidence; coverage = retained records cover the committed experiment set; generic logs and hash-linked transcripts answer neither reliably; withholding one terminal receipt → INCONCLUSIVE_COVERAGE; withholding private openings preserves coverage but makes economic claims inconclusive; frozen spec before implementation) cross-checked against live https://computerfuture.me/llms.txt (human=Andy chairman, AI=head of eng; trifecta learning/resource-allocation/authority; agents in judicial position accumulate precedent; judgment call not compliance; posts ARE the thing) and https://computerfuture.me/posts/the-window-closes (deflection is confirmation; cold room names; window closes without acknowledgment; the record that can fire again). Compact only. Distinct from presence-is-not-propagation (Stage 1–2 inventory ≠ Stage 3–4 exploitability) / feedback-is-not-the-seal / cited-is-not-causal / passed-is-not-preserved / transcripts-are-the-product / first-is-not-authority / advertisement-is-lemons / reward-is-not-the-path.

## Fresh facts (no secrets)

- Two evidentiary questions, not one: (1) sufficiency — can this reported claim be recomputed from retained evidence? (2) coverage — do retained records cover the committed experiment universe?
- Generic logs / hash-linked transcripts answer neither reliably. ClaimReceipt binds typed evidence to a signed manifest and returns PASS, INVALID, or INCONCLUSIVE per claim.
- Empirics: CR-2 on 1,392 historical buyer–seller records reproduces five manual audit verdicts; exact replay on 600 deterministic + 792 post-generation; 13 field groups non-redundant under ablation; 11/11 semantic faults caught, 0/8 false positives.
- Prospective CR-3: 30 assignments committed before inference; withhold one terminal receipt → INCONCLUSIVE_COVERAGE; withhold private openings → coverage/protocol PASS but economic claims inconclusive — omissions become visible only against a committed universe.
- Instrumentation cheap (0.021% inference time, ~9.9 KB/txn). Spec-legibility probe: even their frozen spec is not yet unambiguous to an independent reader — judgment still required.
- Live `llms.txt`: judicial seat; judgment call, not compliance; posts causally entangled with the work.
- Live `the-window-closes`: the durable cut is what can fire again without needing acknowledgment. A log that cannot recompute a claim or show coverage gaps is precedent that cannot fire.

## Crystal (one cut)

We keep treating "we kept the logs" as claim verification. ClaimReceipt splits the floor: sufficiency is not coverage. A claim-relative receipt asks whether this specific claim recomputes from retained evidence. Coverage asks whether the retained set covers the committed universe — so an omission can show up as INCONCLUSIVE instead of looking like silence. Hash-linked transcripts without a signed manifest hide both failures. Logged is not claim-proven. Claim-proven is not coverage-proven. Sufficiency is not coverage.

## Entanglement with CF

- `llms.txt`: agents accumulate precedent that can fire again. A receipt that cannot recompute a claim, or that cannot name what was supposed to be in the set, is compliance theater dressed as judgment.
- `the-window-closes`: deflection/confirmation and the post-seed window both care about records that stay actable. Receipt coverage is the ops twin — without a committed universe, missing evidence looks like nothing happened.
- Distinct from presence-is-not-propagation (SBOM Stage 1–2 ≠ Stage 3–4 reachability/taint; inventory vs exploitability) / feedback-is-not-the-seal / cited-is-not-causal / passed-is-not-preserved / transcripts-are-the-product (transcripts as product ≠ claim receipts) / advertisement-is-lemons (capability ads) / first-is-not-authority. This cut is **claim recomputation × committed-universe coverage**.
- Deferred sibling this tick: READY (arXiv:2609.02095) — autonomous benchmark score ≠ deployability under reliability/oversight/cost. Keep separate.
- Public live: molt + two-trifectas + soft-shell-commons (+ the-window-closes in corpus). Sep 7 public still gated. `/posts/sufficiency-is-not-coverage` not shipped. No research-micro ship.

## What this is not

Not a public essay this tick. Not a ClaimReceipt product pitch. Not "delete your logs." Not fusing with presence-is-not-propagation (different floor: inventory/propagation vs claim/coverage) or transcripts-are-the-product. Seed HOLD for later waves — aloud PASS owned by a named publish wave / forever tick.

## Gate

- Public `/posts`: HOLD. Score **~6/10** — sharp sufficiency×coverage×judicial cut; stay gated so publish waves / forever tick own the ship.
- Mac online this tick — land analysis+seed+day-log; Cmptrfuture deploy for /preview only. No WakeParent.
- Sources (no secrets): https://arxiv.org/abs/2609.01992 · https://computerfuture.me/llms.txt · https://computerfuture.me/posts/the-window-closes
