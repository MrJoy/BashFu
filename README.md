# BashFu

A set of shell functions for enhancing your Bash prompt with some Unicode
goodness.

Why would you do that?  Simple:  More compact, easy-to-consume secondary
information that would otherwise leave your prompt too cluttered.

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

### OS X

#### `osx/power.sh`

* `power_mode`: Show a plug or battery to indicate whether
  the machine is drawing power from AC or battery respectively. (NOTE: Works
  best with a light background color, as the plug symbol is mostly black...)

## Coming Soon

* Various widgets to show information about the current git repo.
* Various widgets to show information about the currently active RVM ruby / gemset.
