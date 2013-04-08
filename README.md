# BashFu

A set of shell functions for enhancing your Bash prompt with some Unicode
goodness.

Why would you do that?  Simple:  More compact, easy-to-consume secondary
information that would otherwise leave your prompt too cluttered.

## Requirements

A terminal program and font capable of displaying Unicode 6.1 characters,
specifically the Emoji character set.

## Installation

Simply clone this repo somewhere handy, then in your `.bash_profile`,
`.profile`, or `.bashrc` (as appropriate), source the pieces that you want:

For example:

```bash
source /path/to/BashFu/bin/clock.sh
```

## Usage

Modify the `PS1` variable to call the relevant shell functions.

For example:

```bash
PS1="$(show_clock) \h:\W \u\$ "
```

## Available Widgets

### Cross-Platform

#### `clock.sh`

* `show_clock`: Show a clock-face, rounded to the nearest
  half-hour.

#### `rvm.sh`

* `rvm_mode`: Show a dot depending on the active RVM configuration:
    * White dot: Using system ruby (no RVM ruby active).
    * Red dot: Using an RVM ruby, but NOT using an explicit gemset.
    * Blue dor: Using an RVM ruby, AND using an explicit gemset.
* `rvm_ruby_details`: Show a string indicating which ruby, which
  version/patch-level, and which gemset are in use.  Shows nothing if an RVM
  ruby isn't active.  Adds one space after the string if an RVM ruby is active.
  Example: `ruby-1.9.3-p392@mrjoy.com`

### OS X

#### `osx/power.sh`

* `power_mode`: Show a plug or battery to indicate whether
  the machine is drawing power from AC or battery respectively. (NOTE: Works
  best with a light background color, as the plug symbol is mostly black...)

## Coming Soon

* Various widgets to show information about the current git repo.
* More widgets to show information about the currently active RVM ruby / gemset.
