# Installation stuff

### Install standard MS fonts (TrueType)
```
sudo apt-get install ttf-mscorefonts-installer
```

### Install modern MS fonts (ClearType)
```
sudo apt install cabextract
mkdir ~/.fonts 
wget -qO- http://plasmasturm.org/dl/vistafonts-installer | bash
OR
curl -s http://plasmasturm.org/dl/vistafonts-installer | bash
```

### Install FiraCode font
```
sudo apt install fonts-firacode
```

### Install logiops
Download the repo, and run this to install a dependency not mentioned in the README
```
sudo apt install build-essential
```

Default and simple config for MX Master 3 (/etc/logid.cfg)
```
devices: ({
    name: "Wireless Mouse MX Master 3";
    smartshift: {on: true;threshold: 255;};
    dpi: 1000;
});
```

### External repos
To install DBeaver, Keepassxc, use official PPA from their website. It is more up-to-date than the distribution's repositories.