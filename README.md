# Backup Script & System Unit/Timer
A basic rsync backup script, set on a 15 minute timer.

Requires that the `backup.service` file is modified and these parameters set...

`<SOURCE>`

Source directory to sync.

`<TARGET>`

Destination directory to sync.

`<EXTRA_RSYNC_COMMANDS>`

Extra commands to be passed to rsync eg `-va`
