#!/bin/sh

files="$(ls -A input/)"

PS3="Select a resume:"
select f in $files; do
  echo "\033[0;30m generating PDF for: \033[1;37m$f\033[0m"
  FILE=$f
  FILENAME=${FILE%%.*}
  break
done

# generate a pdf using the template
docker run --rm \
          --volume "`pwd`:/data" \
          --user `id -u`:`id -g` \
          pandoc/latex \
            --pdf-engine=xelatex \
            input/"$FILE"\
            --template=template/template.tex \
            -o output/"$FILENAME".pdf 
