# Project Context and History

## Project Goal

Digitize the book **"System Design with Ada (Buhr, R. J. A)"** from a scanned PDF into clean, formatted Markdown chapters with extracted figures.

## Environment & Constraints

- **OS**: NixOS.
- **Command Execution**: Use `nix run` or `nix shell` for system tools (e.g., `poppler-utils`, `imagemagick`).
- **Scripting Constraint**: **No Python allowed**. Use Bash/Coreutils or Golang for automation.
- **OCR Strategy**: Do not use local OCR (Tesseract). Rely on Cloud LLM (Gemini 3 Pro) for text transcription, verification, and formatting.

## Status Summary

- **Source**: `source/System design with Ada (Buhr, R. J. A).pdf`
- **Working Directory**: `/home/chuck/git/system-design-with-ada--buhr/`
- **Output Structure**:
  - `chapters-source-images/`: Contains raw PNG page splits organized by chapter.
  - `book/`: Contains the digitized book content.
    - `chapter*.md`: Finalized chapter text.
    - `figures/`: Extracted SVGs and cropped PNGs.
    - `metadata.yaml`: Book metadata.
    - `build_epub.sh`: Script to generate the EPUB.
    - `img.md`: Reference mapping figures to source pages.
  - `README.md`: Project root documentation and Table of Contents.

## Actions Taken

### 1. PDF Processing

- Split the source PDF into individual PNG images using `pdftoppm`.
- Organized the flat list of page images into chapter-specific directories (`chapters-source-images/chapter_01/`, etc.).

### 2. Text Verification & Formatting

- **Chapters 1-9**: Fully transcribed and formatted.
- **Figures**: All visual descriptions have been replaced with actual image links pointing to the `figures/` directory.

### 3. Image Strategy (Hybrid Approach)

- **Standard Symbols/Notation**: Redrawn as **SVG** for scalability and clarity.
  - Examples: Figure 3.1 (Basic pictorial conventions), Figures 3.2 & 3.3 (Entry calls/accepts).
- **Complex/Hand-Drawn Diagrams**: Extracted as **Cropped PNGs** from the source pages to preserve original fidelity.
  - Examples: Office workflows, data flow graphs, detailed architecture diagrams (e.g., Fig 3.4, 4.1).
- **Tools Used**: `imagemagick` (via `nix run`) for cropping.

### 4. Figure Audit and Synchronization

- **Source of Truth**: `book/figures/` is the definitive collection of images.
- **Reference Map**: `book/img.md` tracks which original page each figure was extracted from.
- **Link Auditing**: Verified every image link in the markdown chapters against the file system.

### 5. Reorganization

- Moved raw page images to `chapters-source-images/`.
- Moved all book content (markdown, figures, scripts) into `book/`.

## Workflows & Lessons Learned

### Processing a Chapter

1.  **Read Markdown**: Identify where figures are referenced and what content is missing or requires verification.
2.  **Locate Source**: Find the corresponding raw page image in `chapters-source-images/chapter_XX/`.
3.  **Extract/Generate Figure**:
    - If it's a standard symbol -> Generate SVG code.
    - If it's a complex diagram -> Use `imagemagick` to crop the region from the page PNG.
4.  **Update Markdown**: Insert the image link (`![Alt](figures/fig_X_Y.ext)`) and ensure text formatting is high-quality.

### NixOS Specifics

- Always prefix commands with `nix run nixpkgs#<package> -- <command>` or enter a `nix shell` when tools are needed.
- Packages used: `poppler-utils` (for PDF splitting), `imagemagick` (for image manipulation).
