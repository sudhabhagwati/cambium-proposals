#!/usr/bin/env bash

set -e

if [ "$#" -lt 2 ]; then
  echo "Usage: ./scripts/new_project.sh <PROJECT_CODE> <FOLDER_NAME>"
  echo "Example: ./scripts/new_project.sh CA-2026-002 CA-2026-002_client_project"
  exit 1
fi

PROJECT_CODE="$1"
FOLDER_NAME="$2"
TARGET="clients/$FOLDER_NAME"

mkdir -p "$TARGET/proposal/sections"
cp clients/sample_project/proposal/main.tex "$TARGET/proposal/main.tex"
cp clients/sample_project/proposal/metadata.tex "$TARGET/proposal/metadata.tex"
cp clients/sample_project/proposal/sections/"*.tex" "$TARGET/proposal/sections/" 2>/dev/null || true
cp clients/sample_project/README.md "$TARGET/README.md"

sed -i.bak "s/CA-2026-001/$PROJECT_CODE/g" "$TARGET/proposal/metadata.tex"
rm -f "$TARGET/proposal/metadata.tex.bak"

echo "Created new project at $TARGET"
echo "Next: edit $TARGET/proposal/metadata.tex and section files."