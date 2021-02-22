# Other commands

**--- Do not run the commands blind, always check the options and paths ----**

### iotop
Command to check I/O activity. Useful for whatching over disk activity during backups with rsync. With `-o`, only shows the actual processes with I/O activity. Other options can be activated during the monitoring.

```
sudo iotop -o
```

### htop
Cool utility, more visual than `top`! Does not require `sudo` like iotop, and shows CPU activity.


### rsync
Useful for making backups and syncing data over drives and network.
Here are some of the more useful options for my personal use.<br>
Trailing slashes, on the end of the paths, allow for syncrionizing only the contents of the folders, instead of the folders themselves.

```
rsync --archive -AX --verbose --progress --human-readable 'SOURCE' 'DESTINATION'
rsync -aAXvh --progress 'SOURCE' 'DESTINATION'
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

### Automount a drive in the system
```
sudo blkid
sudo mkdir /mnt/(NAME_OF_DRIVE)
sudo nano /etc/fstab
```
Add this line to the fstab, separated with a TAB:
```
UUID=<uuid-of-your-drive>  <mount-point>  <file-system-type>  <mount-option>  <dump>  <pass>
UUID=<uuid-of-ntfs-file-system>   /mnt/ntfs   ntfs   defaults  0  2
```

### Install other apps, AppImages, etc
Place the files/folders in ``` /opt```.<br>
If necessary to add a link in the main menu, follow indications below for XAMPP installation.

#### Add XAMPP to the menu
```
*REQUIRES ROOT PERMISSION*
cd /usr/share/applications
sudo touch xampp.desktop
sudo nano xampp.desktop
```
Paste this
```
#!/usr/bin/env xdg-open
[Desktop Entry]
Comment=Start or Stop XAMPP
Name=XAMPP Control Panel
Exec=sh -c "pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY sudo /opt/lampp/manager-linux-x64.run"
Encoding=UTF-8
Terminal=false
Name[en_US]=XAMPP Control Panel
Comment[en_US]=Start or Stop XAMPP GUI
Type=Application
Icon=xampp
```

#### Install FileZilla Pro
Similar to XAMPP installation.<br>
Go to the FileZilla folder, and copy the desktop file in ```share/applications``` to this folder:
```
*REQUIRES ROOT PERMISSION*
cd /usr/share/applications
```
Edit the file to point to the binary file and the icon in the FileZilla folder

### Git config for dual-boot development (Change in both machines)
```
git config --global core.filemode false
git config --global core.eol lf
```

### Git config for editing the commit messages with VSCode
```
git config --global core.editor "code --wait"
```

### Fix QGIs error with i386 architecture
Find the sources.list, or similar file (On Linux Mint, check the folders in ```/etc/apt```)
```
deb [arch=amd64] LINK_TO_REPO
```