#!/usr/bin/env python

# Script to convert zsh_history to fish_history.

# Usage:
# 1. cd ~/.config/fish
# 2. cp fish_history{,.bak}
# 3. zsh2fish.py -o zsh_fish_history
# 4. cat zsh_fish_history fish_history > combined_history
# 5. mv combined_history fish_history
# 6. rm zsh_fish_history
#
# Of course, you can do this faster (from within fish, of course):
# begin
#    zsh2fish.py
#    cat ~/.config/fish/fish_history
# end > ~/.config/fish/combined_history
# mv ~/.config/fish/{combined,fish}_history

from __future__ import print_function

import re

class ZshHistoryCmd(object):
    _PATTERN = re.compile(': (?P<timestamp>\d+):(?P<duration>\d+);')

    def __init__(self, timestamp, duration, command):
        self.timestamp = timestamp
        self.duration = duration
        self.command = command

    def to_fish(self):
        """ Convert to a FishHistoryCmd.

        Loses the duration field, and does not include any paths.
        """
        return FishHistoryCmd(self.timestamp, self.command, [])

    @classmethod
    def parse(cls, line):
        """ Parse a single zsh history line. """
        match = cls._PATTERN.match(line)
        if match is None:
            return None
        timestamp = int(match.group('timestamp'))
        duration = int(match.group('duration'))
        command = line[len(match.group(0)):]
        return cls(timestamp, duration, command)

class FishHistoryCmd(object):
    def __init__(self, timestamp, command, paths):
        self.timestamp = timestamp
        self.command = command
        self.paths = paths

    def output(self):
        command = self.command.replace("\n", "\\n")
        cmd = "- cmd: {}\n   when: {}\n".format(command, self.timestamp)
        if self.paths:
            cmd += "   paths:\n"
            for path in self.paths:
                cmd += "    - {}\n".format(path)
        return cmd

if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser(
            formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument("-o", "--output",
            default="-",
            help="file to output fish history to")
    args = parser.parse_args()

    from os.path import expanduser
    import sys

    def group_multilines(lines):
        accum = ''
        for line in lines:
            line = line.strip()
            if line.endswith('\\'):
                accum += line[:-1] + '\n'
                continue
            accum += line
            yield accum
            accum = ''

    with open(expanduser("~/.zsh_history")) as f:
        zsh_history = []
        for line in group_multilines(f):
            cmd = ZshHistoryCmd.parse(line)
            if cmd is not None:
                zsh_history.append(cmd)
            else:
                print("could not parse", line, file=sys.stderr)
    fish_history = [cmd.to_fish() for cmd in zsh_history]

    def write_fish_history(f):
        for cmd in fish_history:
            f.write(cmd.output())

    if args.output == "-":
        write_fish_history(sys.stdout)
    else:
        with open(args.output, "w") as f:
            write_fish_history(f)
