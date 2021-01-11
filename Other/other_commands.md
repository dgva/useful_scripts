## Other commands
**!! Do not run the commands blind, always check the options and paths !!**

### iotop
Command to check I/O activity. Useful for whatching over disk activity during backups with rsync. With `-o`, only shows the actual processes with I/O activity. Other options can be activated during the monitoring.
```
sudo iotop -o
```

### rsync
Useful for making backups and syncing data over drives and network.
Here are some of the more useful options for my personal use.<br>
Trailing slashes, on the end of the paths, allow for syncrionizing only the contents of the folders, instead of the folders themselves.
```
rsync --archiveAX --verbose --progress --human-readable 'SOURCE' 'DESTINATION'
```
Optional
```
--ignore-existing
--exclude 'FOLDER'
--dry-run
```

### df
When used with the `-h` option, allows to see the drives in the system, in human readable form
```
df -h
```