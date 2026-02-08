#!/usr/bin/env bash

# Define output filename
OUTPUT="../System_Design_with_Ada.epub"

# Define chapter list in order
CHAPTERS=(
    "chapter01.md"
    "chapter02.md"
    "chapter03.md"
    "chapter04.md"
    "chapter05.md"
    "chapter06.md"
    "chapter07.md"
    "chapter08.md"
    "chapter09.md"
)

# Check if pandoc is available
if ! command -v pandoc &> /dev/null; then
    echo "Error: pandoc is not installed or not in PATH."
    echo "Please run inside a nix shell with pandoc: nix shell nixpkgs#pandoc"
    exit 1
fi

echo "Building $OUTPUT..."

# Run pandoc
# --toc: Generate a Table of Contents
# --resource-path: Where to look for images (current dir .)
# --metadata-file: The metadata we just created
# --epub-cover-image: (Optional) We don't have one yet, so omitting.
pandoc "${CHAPTERS[@]}" \
    --output "$OUTPUT" \
    --metadata-file metadata.yaml \
    --toc \
    --toc-depth=2 \
    --resource-path=. \
    --self-contained

if [ $? -eq 0 ]; then
    echo "Successfully created $OUTPUT"
else
    echo "Build failed."
    exit 1
fi
