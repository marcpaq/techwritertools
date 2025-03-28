#!/bin/sh

current_tag=$(git describe --tags --exact-match 2>/dev/null)

# If we have a tag for the current commit, then assume this is a
# full-on release.  Otherwise, make it clear that this is a dev
# release.
if [ -n "$current_tag" ]; then
	printf "%s\n" "$current_tag"
else
	latest_tag=$(git describe --tags --abbrev=0 2>/dev/null)
	if [ -n "$latest_tag" ]; then
		printf "%s-dev\n" "$latest_tag"
	else
		printf "0.0.0-dev\n"
	fi
fi
