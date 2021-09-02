|          [Ubuntu 换源](#Ubuntu换源)           |                 [SMB](#SMB)                 |                   [Skype](#Skype)                    |               [ZOOM](#ZOOM)               |                         [dkpg](#dkpg)                         |              [apt](#apt)              |
| :-------------------------------------------: | :-----------------------------------------: | :--------------------------------------------------: | :---------------------------------------: | :-----------------------------------------------------------: | :-----------------------------------: |
|               [UxPlay](#UxPlay)               |              [scrcpy](#scrcpy)              |                [GitPorxy](#GitPorxy)                 |              [xampp](#xampp)              |                          [OBS](#OBS)                          |            [mysql](#mysql)            |
|                [Gnome](#Gnome)                |                 [VLC](#VLC)                 |                  [Chrome](#Chrome)                   |             [Nodejs](#Nodejs)             |                     [Telegram](#Telegram)                     |         [时钟同步](#时钟同步)         |
|                [Clash](#Clash)                |                [Grub](#Grub)                |                [Touchpad](#Touchpad)                 |           [空格预览](#空格预览)           |               [pip 更改镜像源](#pip更改镜像源)                |   [Flameshot 截图](#Flameshot截图)    |
|         [查看 CPU 频率](#查看CPU频率)         | [ubuntu 删除开机启动](#ubuntu删除开机启动)  | [Tab 补全目录不区分大小写](#Tab补全目录不区分大小写) | [安装 rmp 格式的软件](#安装rmp格式的软件) | [关闭笔记本盖子不采取任何操作](#关闭笔记本盖子不采取任何操作) | [多显示器亮度调节](#多显示器亮度调节) |
| [indicator-sysmonitor](#indicator-sysmonitor) | [设置 Terminal 为英文](#设置Terminal为英文) |                                                      |                                           |                                                               |                                       |

### Ubuntu 换源

```shell
#复制此网站的镜像源
https://mirror.tuna.tsinghua.edu.cn/help/ubuntu/


# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse
# 预发布软件源，不建议启用
# deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse


#修改配置文件(将原先的配置文件备份)
sudo cp  /etc/apt/sources.list  /etc/apt/sources_backup.list
sudo vim /etc/apt/sources.list
```

### Chrome

```shell
#安装wget
sudo apt install wget

#下载chrome.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

#安装chrome
sudo dpkg google-chrome-stable_current_amd64.deb


```

### Nodejs

```shell
#安装curl
sudo apt install curl

node14.x
sudo curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

sudo apt install nodejs

sudo apt install npm

#换源
npm config set registry https://registry.npm.taobao.org

npm config get registry
#更新
sudo npm install n -g
sudo n stable

#清理缓存
sudo npm cache clean -f

作用 npm Yarn
安装 npm install(i) yarn
卸载 npm uninstall(un) yarn remove
全局安装 npm install xxx –-global(-g) yarn global add xxx
安装包 npm install xxx –save(-S) yarn add xxx
开发模式安装包 npm install xxx –save-dev(-D) yarn add xxx –dev(-D)
更新 npm update –save yarn upgrade
全局更新 npm update –global yarn global upgrade
卸载 npm uninstall [–save/–save-dev] yarn remove xx
清除缓存 npm cache clean yarn cache clean
重装 rm -rf node_modules && npm install yarn upgrade
```

### Telegram

```shell
#安装Telegram
sudo apt install telegram-desktop

#启动Telegram
telegram-desktop
```

### pip 更改镜像源

```shell
pip config set global.index.url  镜像地址

pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
```

### Tab 补全目录不区分大小写

```shell
#进入root
#编辑文件
sudo vim /etc/inputrc

在文件中添加如下代码
set completion-ignore-case on
```

### 时钟同步

```shell
sudo apt install ntpdate
sudo ntpdate time.windows.com
sudo hwclock -l -w
```

### Clash

```shell
#下载linux-amd64的版本

#解压
sudo gunzip ***.gz

#重命名
mv clash***  clash

#赋予权限
chmod +x clash

#创建文件及文件夹
在～/.config下创建clash文件夹
将下载好的Country.mmdb复制到clash目录下
在clash里面创建config.yaml

#复制订阅链接
sudo curl clash托管链接 >> config.yaml

#设置网络代理
设为手动模式
http:  127.0.0.1  port: 7890
https: 127.0.0.1  port: 7890
Socks: 127.0.0.1  port: 7891

#运行clash
./clash

#打开网站选择节点
http://clash.razord.top/
```

### 空格预览

```shell
sudo apt install gnome-sushi
```

### Touchpad

```shell
https://github.com/iberianpig/fusuma

#配置文件在 .config/fusuma/config.yaml


#将用户添加到input组
sudo gpasswd -a $USER input

#应用
newgrp input

#安装libinput-tools
sudo apt-get install libinput-tools

#安装ruby
sudo apt-get install ruby

#安装Fusuma
sudo gem install fusuma

#安装xdotool
sudo apt-get install xdotool

#通过运行以下命令，确保将触摸板事件发送到GNOME桌面
gsettings set org.gnome.desktop.peripherals.touchpad send-events enabled

#启动Fusuma
fusuma

#更新
sudo gem update fusuma

#直接在Startup Application中添加fusuma Name和Commond都一样

```

### Flameshot 截图

```shell
sudo apt install flameshot
flameshot gui
```

### VLC

```shell
sudo apt install vlc
```

### SMB

```shell
#安装smb服务
sudo apt install smb*

#创建一个smb账号
sudo smbpasswd -a  ubuntu账号名称
New SMB password:			#输入账号密码
Retype new SMB password:	#再次输入账号密码

#查看当前系统中的共享文件夹列表
smbclient -L //localhost/share
```

### Skype

```shell
Google
```

### ZOOM

```shell
wget -O ./zoom.deb https://zoom.us/client/latest/zoom_amd64.deb
```

### ubuntu 删除开机启动

```shell
sudo  update-rc.d  apache2 remove
```

### 查看 CPU 频率

```shell
watch grep \"cpu MHz\" /proc/cpuinfo
```

### dkpg

```shell
#安装软件
sudo dpkg -i packagename

#卸载软件
sudo dpkg -P packagename
```

### apt

```shell
#安装
sudo apt install packagename

#更新
sudo apt upgrade

#删除
sudo apt purge / apt-get --purge remove  #删除已安装包（不保留配置文件)

sudo apt autoremove
删除为了满足依赖而安装的，但现在不再需要的软件包（包括已安装包），保留配置文件

sudo apt remove
删除已安装的软件包（保留配置文件），不会删除依赖软件包，且保留配置文件

sudo apt autoclean
APT的底层包是dpkg, 而dpkg 安装Package时, 会将 *.deb 放在 /var/cache/apt/archives/中，apt-get autoclean 只会删除 /var/cache/apt/archives/ 已经过期的deb

sudo apt clean
使用 apt-get clean 会将 /var/cache/apt/archives/ 的 所有 deb 删掉，可以理解为 rm /var/cache/apt/archives/*.deb

# 删除软件及其配置文件
sudo apt --purge remove <package>
# 删除没用的依赖包
sudo apt autoremove <package>
# 此时dpkg的列表中有“rc”状态的软件包，可以执行如下命令做最后清理：
sudo dpkg -l |grep ^rc|awk '{print $2}' |sudo xargs dpkg -P
```

### 关闭笔记本盖子不采取任何操作

```shell
#编辑配置文件
sudo vim  /etc/systemd/logind.conf

#将其中的:
#HandleLidSwitch=suspend

#改为：
HandleLidSwitch=ignore

#保存退出

重启
```

### Grub

```shell
#下载主题
https://www.gnome-look.org/browse/cat/109/page/1/ord/latest/

#解压

#安装主题

sudo ./install.sh

#利用图形界面修改Grub

#安装grub-customizer

sudo apt install grub-customizer

#更新配置
sudo update-grub

#重启
```

```shell
#修改启动设置
sudo vim /etc/default/grub
```

![](https://img-blog.csdnimg.cn/20200515024653998.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L1pDaGVuMTk5Ng==,size_16,color_FFFFFF,t_70)

### indicator-sysmonitor

```shell
sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor

sudo apt update

sudo apt install indicator-sysmonitor
```

### GNOME

```shell
GSConnect

Dash To Dock

Hide Top Bar

Lock Keys

Status Title Bar

Transparent Top Bar
```

### 设置 Terminal 为英文

```shell
vim .bashrc

if [ "$TERM"="linux" ] ;then
export LANGUAGE=en_US
export LANG=en_US.UTF-8
fi
```

### ZSH

```shell
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt install fonts-powerline

设置默认终端
chsh -s /bin/zsh
chsh -s /bin/bash

#vscode乱码
"terminal.integrated.fontFamily": "Menlo for Powerline",
#插件
git zsh-autosuggestions extract sublime
```

### UxPlay

```shell
sudo apt-get install cmake;

sudo apt-get install cmake libavahi-compat-libdnssd-dev libplist-dev libssl-dev \
libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev gstreamer1.0-libav \
gstreamer1.0-vaapi gstreamer1.0-plugins-bad

git clone https://github.com/antimof/UxPlay.git;

cd UxPlay;

mkdir build;

cd build;

cmake ..;

make;

sudo systemctl start avahi-daemon   //启动服务
./uxpaly   //启动软件
```

### scrcpy

```shell
sudo apt install scrcpy
打开usb调试
adb tcpip 5555
adb connect 192.168.3.58:5555
scrcpy -b 3M -m 800
意思是限制 3 Mbps，画面分辨率限制 800，数值可以随意调整。
scrcpy  //启动软件
```

### GitPorxy

```shell
sudo vim ~/.gitconfig

[http]

proxy = http://127.0.0.1:7890

proxy = socks5://127.0.0.1:7890
[https]

proxy = socks5://127.0.0.1:7890

proxy = https://127.0.0.1:7890

git config -l --global
```

### 软链接

```shell
sudo chmod 777 filename
sudo ln -sf filename  位置
```

### xampp

```shell
下载xampp

sudo ./xampp**.run

#启动管理工具
sudo /opt/lampp/manager-linux-x64.run

#更改文件夹权限
sudo chmod a+w -R /opt/lampp/htdocs

#建立软链接（快捷方式）
sudo ln -sf /opt/lampp/htdocs/

```

### OBS

```shell
sudo apt install obs-studio
```

### mysql

```shell
#安装
sudo apt install mysql-server

#查看服务
systemctl status mysql.service

#配置mysql
sudo mysql_secure_installation

sudo mysql

use mysql;

//此处设置一个复杂的密码，然后退出
ALTER USER 'root'@'localhost' IDENTIFIED BY 'Root_12root';

mysql -uroot -p  //输入Root_12root

#密码规则  每次设置密码时都要使用
set global validate_password.length=1;

set global validate_password.policy=0;

#更改为一个相对简单的密码
ALTER USER 'root'@'localhost' IDENTIFIED BY 'yznaisy';

FLUSH PRIVILEGES;

```

### Dbeaver

```shell
sudo snap install dbeaver-ce
或者下*.deb包
```

### PHP

```shell
sudo apt install php libapache2-mod-php

sudo systemctl restart apache2

sudo chmod a+w -R /var/www

sudo ln -sf /var/www ~/Code

php文件及文件夹都创建在html文件夹下
```

### 多显示器亮度调节

```
sudo add-apt-repository ppa:apandada1/brightness-controller
sudo apt-get update
sudo apt-get install brightness-controller-simple
```

### 安装 rmp 格式的软件

```
比如我们下载了 xmind 安装包 XMind-2020.rpm：

# 添加 Universe 仓库（如果未添加）
sudo add-apt-repository universe

# 更新
sudo apt update

# 安装 Alien
sudo apt install alien

# 将.rpm 包转换为.deb 包（当前目录下会生成一个 deb 安装包，比如：XMind-2020.deb）
sudo alien XMind-2020.rpm

# 安装
sudo dpkg -i XMind-2020.deb
```
