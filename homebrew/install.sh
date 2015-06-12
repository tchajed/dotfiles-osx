#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Install homebrew packages
if test ! $(which grc); then
	brew install grc
fi
if test ! $(which gls); then
	brew install coreutils
fi
if test ! $(which spark); then
	brew install coreutils
fi
if test ! $(which reattach-to-user-namespace); then
    brew install reattach-to-user-namespace
fi

exit 0
