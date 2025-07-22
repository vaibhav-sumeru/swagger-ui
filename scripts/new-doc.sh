#!/usr/bin/env bash
# Usage: ./scripts/new-doc.sh <slug> /path/to/file.yaml
slug="$1"
file="$2"
token=$(openssl rand -hex 12)
id="$slug-$token"
cp "$file" "public/openapi/${id}.yaml"
echo "Share URL: https://api-docs.yourco.com/docs/${id}"
