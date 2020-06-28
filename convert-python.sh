FILES="$(find python-notebooks -type f -name '*.ipynb')|(grep -Ev '*checkpoint*')"
for f in $FILES
do
    nb2hugo $f --site-dir ./ --section python
done
hugo -s content
