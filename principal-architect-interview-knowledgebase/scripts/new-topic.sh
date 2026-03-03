#!/usr/bin/env bash
set -euo pipefail
if [[ $# -lt 2 ]]; then
  echo "Usage: $0 <target-dir> <topic-slug>"
  exit 1
fi
cp templates/topic.template.md "$1/$2.md"
echo "Created: $1/$2.md"
