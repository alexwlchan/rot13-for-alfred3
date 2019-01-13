#!/usr/bin/env python
# -*- encoding: utf-8

import json
import zipfile


if __name__ == "__main__":
    with zipfile.ZipFile("rot13.alfredworkflow", "w") as zf:
        zf.write("icon.png")

        info_plist = open("info.plist", "rb").read()
        rot13_py = open("rot13.py", "rb").read()

        large_type_rot13_py = rot13_py.replace(
            "SUBTITLE", json.dumps("Display the result in large text")
        )

        clipboard_rot13_py = rot13_py.replace(
            "SUBTITLE", json.dumps("Copy the result to the clipboard")
        )

        rendered_info_plist = info_plist.replace(
            "<string>LARGE_TYPE_SCRIPT</string>",
            "<string>%s</string>" % large_type_rot13_py
        ).replace(
            "<string>CLIPBOARD_SCRIPT</string>",
            "<string>%s</string>" % clipboard_rot13_py
        )

        zf.writestr("info.plist", rendered_info_plist)
