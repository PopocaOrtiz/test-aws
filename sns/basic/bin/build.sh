#!/usr/bin/env bash
set -e

root_path=$(realpath .)
template_path="${root_path}/template.yaml"

echo "== SAM build.. =="
echo "using template: ${template_path}"
sam build \
  --template-file "${template_path}"
