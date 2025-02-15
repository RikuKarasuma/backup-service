#!/bin/bash

# Enable stop on error for script and pipeline chain.
set -eo

source="$1"
target="$2"




backup_directory() {

	local source="$1"
	local target="$2"
	shift 2
	local params=("$@")

	echo "Syncing input $source to destination $target"
	echo "Params: ${params[*]}"
	ionice -c3 rsync "${params[@]}" "$source/" "$target/"
	echo "Syncing complete"
}


if findmnt -rn -o TARGET "$source" && findmnt -rn -o TARGET "$target" ; then
	shift 2
	backup_directory "$source" "$target" "$@"
else
	echo "/NAS "$source" or "$target" missing, skipping backup process.."
fi
