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
sudo dpkg -i google-chrome-stable_current_amd64.deb


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
#编辑文件
sudo vim /etc/inputrc

在文件中添加如下代码
set completion-ignore-case on

#或者直接运行下面代码
sudo echo "set completion-ignore-case on" >> /etc/inputrc
```

### 时钟同步

```shell
sudo apt install ntpdate
sudo ntpdate time.windows.com
sudo hwclock -l -w
```

### Clash/Clashy

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
watch -n 0.5 grep \"cpu MHz\" /proc/cpuinfo
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

#或者直接运行下面代码
sudo echo "HandleLidSwitch=ignore" >> /etc/systemd/logind.conf
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

Dash To Dock

Hide Top Bar

Lock Keys

Status Title Bar

Transparent Top Bar
```

### 设置 Terminal 为英文

```shell
sudo  vim ~/.bashrc

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

```shell
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

### cpu 性能模式

```shell
1、安装cpufrequtils:
sudo apt-get install cpufrequtils

编辑 /etc/default/cpufrequtils 如不存在则创建，添加条目

GOVERNOR=”performance”

重启生效

systemctl restart cpufrequtils
```

### xDroid

```shell
打开设置  将安装apk是的默认图形驱动设为 兼容模式
```

### 清理 swap 内存空间

```shell
sudo swapoff -a
sudo swapon -a
sudo vim /etc/fstab
将 /swapfile这一行注释掉
```

### Snap 软件图标更改

```shell
sudo vim /var/lib/snapd/desktop/applications/xxxxx.desktop

更改Icon的路径即可
```

### linux qq 闪退

```shell
sudo rm -rf ~/.config/tencent-qq/qq号
```

### Wine install qq

```shell
sudo apt install wine winetricks
或者直接在商店中下载wine winetricks
然后打开winetricks(警告可以忽略)
选择install an application
后面选择qq
运行qq
wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Tencent/QQ/Bin/QQ.exe

修复环境
winetricks riched20
```

### kill  port

```shell
sudo  lsof  -i:port

kill PID
```

### Vim

``` 
#普通模式
u  撤消
w  下一个单词
b  上一个单词
4j 向下跳4行
gg 最上方
G  最下方
5gg/5G 跳转到第五行
c-d 向下翻页  
c-u 向上翻页
fr  移动到当前行的地一个r
yaw 复制一个单词
y4j 向下复制4行
p   当前行下一行粘贴复制的内容
P   当前行上一行粘贴复制的内容
dj  删除当前行和下一行
d8j 删除下8行
caw 删除当前单词进入输入模式
cc  删除当前行进入输入模式
c4j 删除下4行进入输入模式 

配置文件
vim   ~/.vimrc
neovim ~/.config/nvim/init.vim 
imap 输入模式改键
nmap 正常模式改键

配置

imap jk <Esc>    将esc改为jk
nmap <Space> :   将空格改为：

插件
VimPlug

call plug#begin('~/.vim/plugged') 

#此处安装插件

call plug#end()

配置好配置文件后使用命令模式是PlugInstall来安装插件

将Casplock 映射为Ctrl

Tweaks>Keyboard & Mouse> Additional Layout Options>Ctrl postion>
 Caps Lock as Ctrl
```



```
{
    "editor.fontFamily": "'Fira Code', Consolas, 'Courier New', monospace",
    "editor.fontLigatures": true,
    //改变注释颜色
    "editor.tokenColorCustomizations": {
        "comments": "#ED4C67" // 注释
    },
    "git.ignoreLimitWarning": true, //如果后面还加内容，记得块末用逗号隔开,
    "prettier.useEditorConfig": false,
    "prettier.printWidth": 130, // 超过最大值换行
    "prettier.tabWidth": 2, // 缩进字节数
    "prettier.useTabs": false, // 缩进不使用tab，使用空格
    "prettier.semi": true, // 句尾添加分号
    "prettier.singleQuote": true, // 使用单引号代替双引号
    "prettier.proseWrap": "preserve", // 默认值。因为使用了一些折行敏感型的渲染器（如GitHub comment）而按照markdown文本样式进行折行
    "prettier.arrowParens": "avoid", //  (x) => {} 箭头函数参数只有一个时是否要有小括号。avoid：省略括号
    "prettier.bracketSpacing": true, // 在对象，数组括号与文字之间加空格 "{ foo: bar }"
    "prettier.endOfLine": "auto", // 结尾是 \n \r \n\r auto
    "prettier.eslintIntegration": false, //不让prettier使用eslint的代码格式进行校验
    "prettier.htmlWhitespaceSensitivity": "ignore",
    "prettier.ignorePath": ".prettierignore", // 不使用prettier格式化的文件填写在项目的.prettierignore文件中
    "prettier.jsxBracketSameLine": false, // 在jsx中把'>' 是否单独放一行
    "prettier.jsxSingleQuote": false, // 在jsx中使用单引号代替双引号
    "prettier.parser": "babylon", // 格式化的解析器，默认是babylon
    "prettier.requireConfig": false, // Require a 'prettierconfig' to format prettier
    "prettier.stylelintIntegration": false, //不让prettier使用stylelint的代码格式进行校验
    "prettier.trailingComma": "es5", // 在对象或数组最后一个元素后面是否加逗号（在ES5中加尾逗号）
    "prettier.tslintIntegration": false,
    "vim.useCtrlKeys": true,
    "vim.handleKeys": {
        "<C-a>": false,
        "<C-b>": false,
        "<C-c>": false,
        "<C-d>": false,
        "<C-e>": false,
        "<C-f>": false,
        "<C-g>": false,
        "<C-h>": false,
        "<C-i>": false,
        "<C-j>": false,
        "<C-k>": false,
        "<C-l>": false,
        "<C-m>": false,
        "<C-n>": false,
        "<C-o>": false,
        "<C-p>": false,
        "<C-q>": false,
        "<C-r>": false,
        "<C-s>": false,
        "<C-t>": false,
        "<C-u>": false,
        "<C-v>": false,
        "<C-w>": false,
        "<C-x>": false,
        "<C-y>": false,
        "<C-z>": false
    },
    "editor.formatOnSave": true,
    "editor.fontSize": 16,
    "editor.tabSize": 2,
    "editor.detectIndentation": false,
    "update.mode": "none",
    "search.followSymlinks": false,
    "[javascript]": {
        "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "javascript.updateImportsOnFileMove.enabled": "always",
    "beautify.config": "true",
    "beautify.language": {
      "html": [
        "htm",
        "html",
        "vue"
      ],
      "js": {
        "type": [
          "javascript",
          "json"
        ],
        "filename": [
          ".jshintrc",
          ".jsbeautify"
        ]
      },
      "css": [
        "css",
        "scss",
        "less"
      ],
      "c": [
        "c"
      ]
    },
    "[vue]": {
        "editor.defaultFormatter": "octref.vetur"
    },
    "tabnine.experimentalAutoImports": true,
    "remote.SSH.remotePlatform": {
      "192.168.3.81": "linux"
    },
    "workbench.startupEditor": "newUntitledFile",
    "editor.quickSuggestions": {
        "strings": true
    },
    "editor.suggestSelection": "first",
    "zenMode.centerLayout": false,
    "zenMode.fullScreen": false,
    "zenMode.hideTabs": false,
    "sync.gist": "dd4d3492c820e163eb790dda0be179fb",
    "workbench.colorTheme": "Atom Material Theme",
    "zenMode.hideStatusBar": false,
    "zenMode.hideLineNumbers": false,
    "liveServer.settings.donotShowInfoMsg": true,
    "explorer.confirmDelete": false,
    "liveServer.settings.CustomBrowser": "chrome",
    "explorer.confirmDragAndDrop": false,
    "code-runner.runInTerminal": true,
    "vsicons.dontShowNewVersionMessage": true,
    "terminal.integrated.defaultProfile.linux": "zsh",
    "workbench.iconTheme": "material-icon-theme",
    "security.workspace.trust.untrustedFiles": "open",
    "editor.accessibilitySupport": "off",
    "vetur.ignoreProjectWarning": true,
}
```

