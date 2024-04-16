#!/bin/bash

cd "$(dirname "$0")" || exit 1;

pyinstaller \
  --noconfirm \
  --onefile \
  --add-data="webssh/static:./webssh/static" \
  --add-data="webssh/templates:./webssh/templates" \
   run.py;