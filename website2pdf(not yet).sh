echo 'Enter Url:'
read a
mkdir /wget
wget --mirror -w 2 -p --html-extension --convert-links -P /wget $a
find $a -name '*.html' -exec wkhtmltopdf {} {}.pdf \;
mkdir pdfs
find $a -name '*.pdf' -exec mv {} pdfs/ \;
