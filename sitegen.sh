#!/bin/bash

python pagerender.py index.md index.html > index.html

python pagerender.py one-piece/index.md index.html > one-piece/index.html
python pagerender.py boruto/index.md index.html > boruto/index.html


find one-piece -mindepth 1 -maxdepth 1 -type d -exec sh -c "python pagerender.py {}/index.md blog.html > {}/index.html" \;
find one-piece -mindepth 1 -maxdepth 1 -type d -exec sh -c "python pagerender.py {}/index.md blogamp.html > {}/amp/index.html" \;


find boruto -mindepth 1 -maxdepth 1 -type d -exec sh -c "python pagerender.py {}/index.md blog.html > {}/index.html" \;
find boruto -mindepth 1 -maxdepth 1 -type d -exec sh -c "python pagerender.py {}/index.md blogamp.html > {}/amp/index.html" \;

