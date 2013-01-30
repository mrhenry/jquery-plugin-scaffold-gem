# Jplugin

Jplugin provides you a simple scaffold for jQuery plugin development with:

* Basic folder structure for added your demo page in /public (demo on local domain jquery-your-plugin.dev with [POW](http://pow.cx/))
* Thor tasks to compile with Google Closure & release versions

## Dependencies

* Google Closure compiler

  ```bash
  brew install closure-compiler
  ```

* Thor: A scripting framework that replaces rake, sake and rubigen

  ```bash
  gem install thor
  ```

* [POW](http://pow.cx/), this is not necessary, but it's quite handy :)

  ```bash
  curl get.pow.cx | sh
  ```

## Installation

```bash
gem install jplugin
```

## Usage

Be sure not to include "jquery" in your plugin name, this will be added automatically.

```bash
jplugin name-of-your-plugin "Author Name"
```
