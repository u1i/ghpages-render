tmpfile=/tmp/index.html.tmp

echo "this page was auto generated at $(date)" > $tmpfile

git checkout gh-pages
cp $tmpfile index.html
git add -A
git commit -m changed
git push
git checkout main
