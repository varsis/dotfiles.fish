#!/usr/bin/env fish
if test (uname) != Darwin
	exit
end

abbr -a afk 'open -a /System/Library/CoreServices/ScreenSaverEngine.app'

# fish_add_path -g /usr/local/sbin /opt/homebrew/bin
