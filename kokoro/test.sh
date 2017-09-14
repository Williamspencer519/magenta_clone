#!/bin/bash

# Fail on any error.
set -e
# Display commands being run.
set -x

sudo pip install tensorflow scipy matplotlib intervaltree bokeh IPython

bazel test \
  --keep_going \
  --test_output=errors -- \
  //magenta/...
