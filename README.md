# rot13-for-alfred3

A [rot13 cipher][rot13] implementation for Alfred 3.
Requires the Alfred Powerpck to use.
Originally made by [@fontiago][fontiago], and tweaked by alexwlchan.

![](screenshot.png)

[rot13]: https://en.wikipedia.org/wiki/ROT13
[fontiago]: https://github.com/fontiago/rot13-for-alfred3


## Installation

Clone or download this repository, then open `rot13.alfredworkflow`.

Alternatively, you can download it [directly from GitHub][github].

[github]: https://github.com/alexwlchan/rot13-for-alfred3/raw/master/rot13.alfredworkflow


## Usage

There are two keywords (both configurable in the Alfred Preferences):

With **`r13`**, you can action the item (usually the Enter key) to copy the ciphered text to your clipboard.

With **`r13l`**, action the item to display the ciphered text as large text.


## Development

The interesting logic happens in `rot13.py`, which gets dropped into an Alfred [script filter][script_filter].

Once you've edited this script, run `build_workflow.py` to build a new workflow bundle.

[script_filter]: https://www.alfredapp.com/help/workflows/inputs/script-filter/


## Gunaxf sbe ernqvat
