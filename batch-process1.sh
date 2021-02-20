#! /bin/sh
for f in "$1"/*; do
if [ -f "$f" ]; then
   FILESIZE="$(du -sh "${f}" | cut -f1)"
   FILENMAE="$(basename "${f}")"
   WORDCOUNT="$(wc -w ${f} | cut -d' ' -f1)"
   echo "File Name: $FILENAME"
   echo "File Size: $FILESIZE"
   echo "File Word Count: $WORDCOUNT"
fi
done
