#!/usr/bin/env bash
# nobel-prizes — egress preflight.
#
# The engine runs this itself at the start of every run (CLAUDE.md §0) rather
# than trusting a .preflight left by the shared cloud environment, whose own
# setup script probes other sites' domains.
#
# nobelprize.org is the factual floor of every page (laureates, motivations,
# popular + advanced information), so it gets its own verdict line. The other
# probes are hosts this repo actually reads from — never neutral hosts like
# example.com, which Custom network access blocks by design.
#
# Never exits non-zero — a failed preflight is a fact for the engine to act on.

set -u
PREFLIGHT=".preflight"
UA='Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 Chrome/124.0 Safari/537.36'

probe() { curl -sS -o /dev/null --max-time 10 -A "$UA" -w '%{http_code}' "$1" 2>/dev/null; }
ok() { case "$1" in 2*|3*) return 0 ;; *) return 1 ;; esac; }

RESULTS=""; OK=0; NOBEL_WWW=0; NOBEL_API=0
for u in https://www.nobelprize.org/prizes/physics/2024/popular-information/ \
         "https://api.nobelprize.org/2.1/nobelPrizes?nobelPrizeYear=2024&nobelPrizeCategory=phy" \
         https://pubmed.ncbi.nlm.nih.gov/ https://arxiv.org/ https://www.nature.com/; do
  code=$(probe "$u"); [ -z "$code" ] && code="000"
  RESULTS="${RESULTS}  ${u} -> ${code}"$'\n'
  if ok "$code"; then
    OK=1
    case "$u" in *www.nobelprize.org*) NOBEL_WWW=1 ;; *api.nobelprize.org*) NOBEL_API=1 ;; esac
  fi
done

{
  echo "# preflight — written by setup.sh"
  echo "checked_at: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
  if [ "$OK" = "1" ]; then
    echo "egress: OK"
    if [ "$NOBEL_WWW" = "1" ] && [ "$NOBEL_API" = "1" ]; then
      echo "nobelprize.org: OK"
    else
      echo "nobelprize.org: BLOCKED (www=$NOBEL_WWW api=$NOBEL_API) — publish nothing, notify, end"
    fi
  else
    echo "egress: BLOCKED"
    echo ""
    echo "Every probe failed. These are different hosts this repo reads from, so"
    echo "this is the environment's network policy, not one site blocking bots."
    echo "Do not try other user agents or hosts and do not write from memory."
    echo "Publish nothing, touch no files, send one PushNotification saying the"
    echo "environment's Network access needs checking, then end the run."
  fi
  echo ""
  echo "probes:"
  printf '%s' "$RESULTS"
} > "$PREFLIGHT"
cat "$PREFLIGHT"
exit 0
