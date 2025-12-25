#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Insert spaces before and after inline math(インライン数式の前後にスペースを挿入する)
sed -i -E 's/(\$[^$]+\$)/ \1 /g; s/  */ /g; s/^ //; s/ $//' "$1"

typstyle -i "$1"
typst compile "$1"