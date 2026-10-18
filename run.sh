#!/usr/bin/env bash
# dry-binder-kit — Infrastructure engineer · R and tidyverse
# 
set -euo pipefail

tmp=$(mktemp)
trap 'rm -f "$tmp"' EXIT

cat > "$tmp"

sort "$tmp" | uniq -c | sort -rn
echo "---"
echo "$(sort -u "$tmp" | wc -l | tr -d ' ') unique"
