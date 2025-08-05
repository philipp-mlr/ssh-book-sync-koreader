#!/usr/bin/env bash

KINDLE_IP="192.168.1.X" #TODO: change me!
KINDLE_PORT="2222"      #TODO: change me!
USER="root"
BOOKS_DIR="/source_dir"
DEST_DIR="/mnt/us/books"

echo "📚 Starting book transfer to Kindle at ${KINDLE_IP}:${KINDLE_PORT}..."

# Find and copy all common ebook formats recursively
find "$BOOKS_DIR" -type f \( -iname "*.epub" -o -iname "*.mobi" -o -iname "*.azw3" -o -iname "*.pdf" \) | while read -r file; do
  echo "→ Copying: $file"
  scp -P "$KINDLE_PORT" "$file" "$USER@$KINDLE_IP:$DEST_DIR"
done

echo "📚 Transfer complete."
