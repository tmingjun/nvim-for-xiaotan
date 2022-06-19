### neovim for xiaotan

自己配置neovim的配置备份仓库，方便后续迁移开发环境时候获取，下面方法可以配置使用该配置。

#### 依赖环境

1. Install [Neovim v0.8.0](https://github.com/neovim/neovim/releases).
2. lazygit install
    > sudo add-apt-repository ppa:lazygit-team/releases
    > sudo apt-get update
    > sudo apt-get install lazygit 


#### 配置导入
确保环境能连接上github，直接clone配置仓库到:`~/.config/nvim`
> git clone https://github.com/tmingjun/nvim-for-xiaotan.git ~/.config/nvim

#### 插件安装&使用
1. 插件安装  
直接在终端输入`nvim`，打开neovim，输入`:ParckerSync`，可安装所有插件.  
    > ***tips***: 该命令需要区github上clone插件代码，国内访问速度慢经常会出现安装失败的情况，需要多试几次，
    也可以尝试快速访问github的方法,目前我使用的是[fastgithub](https://github.com/dotnetcore/FastGithub),使用方法官网上有介绍.
2. 插件  
    -- common plugin
    +. [wbthomason/packer.nvim]() -- Have packer manage itself
    +. [nvim-lua/popup.nvim]() -- An implementation of the Popup API from vim in Neovim
    +. [nvim-lua/plenary.nvim]() -- Useful lua functions used ny lots of plugins
    +. [windwp/nvim-autopairs]() -- Autopairs, integrates with both cmp and treesitter
    +. [numToStr/Comment.nvim]() -- Easily comment stuff
    +. [kyazdani42/nvim-web-devicons]()
    +. [kyazdani42/nvim-tree.lua]()
    +. [akinsho/bufferline.nvim]() --bufferline显示插件
    +. [moll/vim-bbye]() --buffer插件，提供buffer删除功能
    +. [nvim-lualine/lualine.nvim]() --状态栏插件
    +. [akinsho/toggleterm.nvim]() --终端插件
    +. [ahmedkhalf/project.nvim]()
    +. [lewis6991/impatient.nvim]() --延迟加载插件
    +. [lukas-reineke/indent-blankline.nvim]() --缩进空行显示
    +. [goolord/alpha-nvim]() --启动界面插件
    +. [antoinemadec/FixCursorHold.nvim]() -- This is needed to fix lsp doc highlight
    +. [folke/which-key.nvim]()
    +. [yianwillis/vimcdoc]() --vim中文帮助文档
    +. [RRethy/vim-illuminate]() --高亮鼠标下单词
    +. [iamcco/markdown-preview.nvim]()

    -- Colorschemes
    +. [lunarvim/colorschemes]() -- A bunch of colorschemes you can try out
    +. [lunarvim/darkplus.nvim]()
    +. [catppuccin/nvim]()

    -- cmp plugins
    +. [hrsh7th/nvim-cmp]() -- The completion plugin
    +. [hrsh7th/cmp-buffer]() -- buffer completions
    +. [hrsh7th/cmp-path]() -- path completions
    +. [hrsh7th/cmp-cmdline]() -- cmdline completions
    +. [saadparwaiz1/cmp_luasnip]() -- snippet completions
    +. [hrsh7th/cmp-nvim-lsp]()
    -- +. [f3fora/cmp-spell]() -- 拼写建议

    -- snippets
    +. [L3MON4D3/LuaSnip]() --snippet engine
    +. [rafamadriz/friendly-snippets]() -- a bunch of snippets to use

    -- LSP
    +. [neovim/nvim-lspconfig]() -- enable LSP
    +. [williamboman/nvim-lsp-installer]() -- simple to use language server installer
    +. [tamago324/nlsp-settings.nvim]() -- language server settings defined in json for
    +. [jose-elias-alvarez/null-ls.nvim]() -- for formatters and linters

    -- Telescope
    +. [nvim-telescope/telescope.nvim]()

    -- Treesitter
    +. [nvim-treesitter/nvim-treesitter](),
    +. [JoosepAlviste/nvim-ts-context-commentstring]()

    -- Git
    +. [lewis6991/gitsigns.nvim]()
    +. [sindrets/diffview.nvim]()

    --tmux
    +. [aserowy/tmux.nvim]()


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

3. font install,to support the icons, i choose the ***FriaCode***  
    > https://www.nerdfonts.com/
