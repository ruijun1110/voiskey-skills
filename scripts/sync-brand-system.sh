#!/usr/bin/env bash

set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source_file="$repo_root/brand/brand-system.md"

for target_file in \
  "$repo_root/plugins/voiskey-brand-copy/skills/voiskey-brand-copy/references/brand-system.md" \
  "$repo_root/plugins/voiskey-product-hunt-replies/skills/voiskey-product-hunt-replies/references/brand-system.md"
do
  mkdir -p "$(dirname "$target_file")"
  cp "$source_file" "$target_file"
done
