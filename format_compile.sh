#!/bin/bash

# 使用法: ./latex_spacer.sh <ファイルパス>

if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# OS判定を行い、sedのオプションを切り替える
if [[ "$(uname)" == "Darwin" ]]; then
    # macOS の場合: -i '' を指定しないとエラーになる
    sed -i '' -E 's/([^[:space:]])(\$[^$]+\$)/\1 \2/g; s/(\$[^$]+\$)([^[:space:]])/\1 \2/g' "$1"
else
    # Linux (GNU sed) の場合
    sed -i -E 's/([^[:space:]])(\$[^$]+\$)/\1 \2/g; s/(\$[^$]+\$)([^[:space:]])/\1 \2/g' "$1"
fi
