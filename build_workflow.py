#!/usr/bin/env python
# -*- encoding: utf-8

import zipfile


if __name__ == "__main__":
    with zipfile.ZipFile("rot13.alfredworkflow", "w") as zf:
        zf.write("icon.png")
        zf.write("info.plist")
