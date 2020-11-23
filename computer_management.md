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
[Desktop Entry]
Encoding=UTF-8
Name=XAMPP Control Panel
Comment=Start and Stop XAMPP
Exec=sudo /opt/lampp/manager-linux-x64.run
Icon=/opt/lampp/htdocs/favicon.ico
Categories=Application
Type=Application
Terminal=true
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
