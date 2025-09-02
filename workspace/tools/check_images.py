#!/usr/bin/env python3
import os
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]

# File types to scan
SCAN_EXTS = {".html", ".htm", ".php", ".css", ".xsl", ".xslt", ".md", ".markdown"}

# Image extensions
IMG_EXTS = (".png", ".jpg", ".jpeg", ".gif", ".svg", ".webp", ".bmp")

# Regex patterns to capture image-like references
patterns = [
    # HTML src="..."
    re.compile(r"src\s*=\s*[\"']([^\"'>]+)(?:\?[\w=&.-]*)?[\"']", re.IGNORECASE),
    # HTML link rel icon href="..."
    re.compile(r"href\s*=\s*[\"']([^\"'>]+)(?:\?[\w=&.-]*)?[\"']", re.IGNORECASE),
    # CSS url(...)
    re.compile(r"url\(\s*[\"']?([^\)\"']+)(?:\?[\w=&.-]*)?[\"']?\s*\)", re.IGNORECASE),
    # Markdown image ![alt](...)
    re.compile(r"!\[[^\]]*\]\(([^\)]+)\)", re.IGNORECASE),
]

def is_image_path(path: str) -> bool:
    p = path.split("#", 1)[0]  # strip anchors
    return any(p.lower().endswith(ext) for ext in IMG_EXTS)

def normalize(path: str) -> Path:
    # Ignore external URLs and data URIs
    if re.match(r"^(https?:)?//", path) or path.startswith("data:"):
        return None
    # Strip query/hash
    path = path.split("?", 1)[0].split("#", 1)[0]
    # Remove surrounding whitespace
    path = path.strip()
    if not path:
        return None
    # Treat absolute web paths as repo-rooted
    if path.startswith("/"):
        return ROOT / path.lstrip("/")
    # Otherwise relative to the file's directory later
    return Path(path)

def main():
    referenced = set()
    missing = {}

    for dirpath, _, filenames in os.walk(ROOT):
        # Skip VCS and common vendor dirs
        parts = Path(dirpath).parts
        if any(p in {".git", "node_modules", "venv", "__pycache__"} for p in parts):
            continue
        for name in filenames:
            if Path(name).suffix.lower() not in SCAN_EXTS:
                continue
            fpath = Path(dirpath) / name
            try:
                text = fpath.read_text(encoding="utf-8", errors="ignore")
            except Exception:
                continue
            candidates = []
            for pat in patterns:
                for m in pat.findall(text):
                    if isinstance(m, tuple):
                        m = m[0]
                    candidates.append(m)
            for raw in candidates:
                if not is_image_path(raw):
                    continue
                norm = normalize(raw)
                if norm is None:
                    continue
                if norm.is_absolute():
                    ref_path = norm
                else:
                    ref_path = (fpath.parent / norm).resolve()
                referenced.add((str(fpath.relative_to(ROOT)), raw, str(ref_path.relative_to(ROOT))))
                if not ref_path.exists():
                    missing.setdefault(str(ref_path.relative_to(ROOT)), []).append((str(fpath.relative_to(ROOT)), raw))

    # Output summary
    print("Referenced image count:", len(referenced))
    if not missing:
        print("No missing image assets found.")
        return
    print("Missing image assets (path => first 5 references):")
    for path, refs in sorted(missing.items()):
        print("-", path)
        for srcfile, raw in refs[:5]:
            print("   from:", srcfile, "ref:", raw)
        if len(refs) > 5:
            print("   (+{} more references)".format(len(refs) - 5))

if __name__ == "__main__":
    main()

