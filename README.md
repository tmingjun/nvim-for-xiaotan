### neovim for xiaotan

自己配置neovim的配置备份仓库，方便后续迁移开发环境时候获取，下面方法可以配置使用该配置。

#### 依赖环境

1. [Neovim v0.8.0](https://github.com/neovim/neovim/releases).

#### 配置导入
确保环境能连接上github，直接clone配置仓库到:`~/.config/nvim`
> git clone https://github.com/tmingjun/nvim-for-xiaotan.git ~/.config/nvim

#### 插件安装&使用
1. 插件安装  
直接在终端输入`nvim`，打开neovim，输入`:ParckerSync`，可安装所有插件.  
    > ***tips***: 该命令需要区github上clone插件代码，国内访问速度慢经常会出现安装失败的情况，需要多试几次，
    也可以尝试快速访问github的方法,目前我使用的是[fastgithub](https://github.com/dotnetcore/FastGithub),使用方法官网上有介绍.
2. 插件使用  

#### 问题修复
1. markdow-preview.nvim 无法预览问题  
由于安装插件时候开启了fastgithub代理工具导致其他工具无法经过代理去github下载文件，故关闭fastgithub。  
```
cd ~/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim/app/
./install.sh
```
2. neovim 系统剪切板无法共享到neovim内部  
安装 xclip
    > sudo apt-get install -y xclip
