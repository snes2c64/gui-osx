# macOS App for SNES2C64 GUI

This repository allows you to build a universal macOS App for the SNES2C64 GUI.

## Requirements

You need the [Go](https://go.dev/) compiler installed. With [Homebrew](https://brew.sh/), use 

```sh
brew install go
```

For code signing, you need to create the file `project.xconfig` in the top level directory of this repository with the following settings:

```
PRODUCT_BUNDLE_IDENTIFIER = com.yourdomain.SNES2C64
DEVELOPMENT_TEAM = XXXXXXX
```
