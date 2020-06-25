FILES="$(find python-notebooks -type f -name '*.ipynb')"
for f in $FILES
do
    nb2hugo $f --site-dir base --section python
done
hugo -s base
