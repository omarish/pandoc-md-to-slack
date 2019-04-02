# pandoc-md-to-slack

Pandoc extension to convert markdown to slack formatting. More here: [http://omarish.com/2018/06/24/convert-markdown-to-slack-formatting.html](http://omarish.com/2018/06/24/convert-markdown-to-slack-formatting.html).

## How?

```bash
$ pandoc -f gfm -t slack.lua example.md
```

## Example

```
› cat example.md
# This is a first heading.

## This is a second heading.

This is a list:

1. Item 1.
2. Item 2.
3. Item 3.

_this text should be emphasized_
```

Convert to slack:

```bash
$ pandoc -f gfm -t slack.lua example.md
```

Result:

```
*This is a first heading.*

*This is a second heading.*

This is a list:

* Item 1.
* Item 2.
* Item 3.

_this text should be emphasized_
```

## Installing with nix

If you use the [Nix](https://nixos.org/nix/) package manager you can install this tool as follows:

```
$ nix-env -f . -i 
...
$ echo "Hello *world*" | md2slack 
Hello _world
```

It will install a script called `md2slack` that accepts input via stdin.

