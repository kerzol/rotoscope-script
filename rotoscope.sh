# stupid oneliner for image rotoscoping
# based on http://kansenzone.blogspot.fr/2008/05/automatic-rotoscoping.html

FILE=$1
autotrace $FILE -output-format svg -color-count 20 -despeckle-level 20 -filter-iterations 10 -output-file tmp.svg
convert -quality 100 tmp.svg new-$FILE
rm tmp.svg
