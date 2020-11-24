## Automount a drive in the system
```
sudo blkid
sudo mkdir /mnt/(NAME_OF_DRIVE)
sudo nano /etc/fstab
```
Add this line to the fstab, separated with a TAB
```
UUID=<uuid-of-your-drive>  <mount-point>  <file-system-type>  <mount-option>  <dump>  <pass>
UUID=<uuid-of-ntfs-file-system>   /mnt/ntfs   ntfs   defaults  0  2
```

## Add XAMPP tp the menu
```
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

## Git config for dual-boot development (Change in both machines)
```
git config --global core.filemode false
git config --global core.eol lf
```

## Git config for editing the commit messages with VSCode
```
git config --global core.editor "code --wait"
```

## Fix QGIs error with i386 architecture
Find the sources.list, or similar file (On Linux Mint, check the folders in ```/etc/apt```)
```
deb [arch=amd64] LINK_TO_REPO
```