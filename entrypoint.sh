#!/bin/bash
set -e

pandoc --metadata=project:$1 --metadata=toc:$4 --metadata=vimversion:"$3" --metadata=description:"$5" --lua-filter /scripts/skip-blocks.lua --lua-filter /scripts/include-files.lua -t /scripts/panvimdoc.lua $2 -o doc/$1.txt
