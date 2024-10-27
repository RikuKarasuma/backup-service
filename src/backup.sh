#!/bin/bash

# Enable stop on error for script and pipeline chain.
set -eo

source=$1
target=$2
extra_params=$3

backup_directory() {

	local source=$1
	local target=$2
	local extra_params=$3

	echo "Syncing input $source to destination $target"
	rsync $extra_params $source/ $target/
  echo "Syncing complete"
}

backup_directory $source $target $extra_params
