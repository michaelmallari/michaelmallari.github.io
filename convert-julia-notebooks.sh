FILES="$(find julia-notebooks -type f -name '*.ipynb')"
for f in $FILES
do
    nb2hugo $f --site-dir base --section julia
done
hugo -s base
