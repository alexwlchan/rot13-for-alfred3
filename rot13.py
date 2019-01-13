#!/usr/bin/env python
# -*- encoding: utf-8

import json
import sys

query = sys.argv[1]
encoded_query = query.encode("rot13")

payload = {
    "items": [
        {
            "type": "file",
            "title": encoded_query,
            "subtitle": SUBTITLE,
            "arg": encoded_query
        }
    ]
}

print(json.dumps(payload))
