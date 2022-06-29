# neovim for xiaotan

自己配置neovim的配置备份仓库，方便后续迁移开发环境时候获取，下面方法可以配置使用该配置。

## 依赖环境
- Install [Neovim v0.8.0](https://github.com/neovim/neovim/releases).
- lazygit install
    > sudo add-apt-repository ppa:lazygit-team/releases  
    > sudo apt-get update  
    > sudo apt-get install lazygit  

    if up way is not useful,dirict to get [lazygit](https://github.com/jesseduffield/lazygit) in github [release](https://github.com/jesseduffield/lazygit/releases).

- update [tmux](https://github.com/tmux/tmux) 3.2+ to [release](https://github.com/tmux/tmux/releases/tag/3.2a) to fix the problem:`clipboard:error:tmux:unknown option -- w`
    ```
    ./configure && make
    sudo make install
    ```
    tmux depends on [libevent](https://github.com/libevent/libevent) 2.x, available from [release](https://github.com/libevent/libevent/releases/tag/release-2.1.12-stable).

- clang-format 格式化C/c++
> sudo apt-get install clang-format--
> 

***Tips:*** first use `:checkhealth` to impress your development is OK  

- ERROR: **npm**: not available
- ERROR: **node**: not available
    > npm i -g neovim
- WARNING: **pip3**: not available
- WARNING: **curl**: not available
- WARNING: `tree-sitter` executable not found (parser generator, only needed for :TSInstallFromGrammar, not required for :TSInstall)
- WARNING: telescope: require("telescope.health").check()
- ERROR: rg: not found. `live-grep` finder will not function without [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep) installed.
    > sudo apt install ripgrep
- WARNING: fd: not found. Install [sharkdp/fd](https://github.com/sharkdp/fd) for extended capabilities


## 配置导入
确保环境能连接上github，直接clone配置仓库到:`~/.config/nvim`
> git clone https://github.com/tmingjun/nvim-for-xiaotan.git ~/.config/nvim

## 插件安装&使用
### 安装  
直接在终端输入`nvim`，打开neovim，输入`:ParckerSync`，可安装所有插件.  
> ***tips***: 该命令需要区github上clone插件代码，国内访问速度慢经常会出现安装失败的情况，需要多试几次，
    也可以尝试快速访问github的方法,目前我使用的是[fastgithub](https://github.com/dotnetcore/FastGithub),使用方法官网上有介绍.
### 插件  
***common plugins***

- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim) -- Have packer manage itself
- [nvim-lua/popup.nvim](https://github.com/nvim-lua/popup.nvim) -- An implementation of the Popup API from vim in Neovim
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim) -- Useful lua functions used ny lots of plugins
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) -- Autopairs, integrates with both cmp and treesitter
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim) -- Easily comment stuff
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim) --bufferline显示插件
- [moll/vim-bbye](https://github.com/moll/vim-bbye) --buffer插件，提供buffer删除功能
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) --状态栏插件
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) --终端插件
- [ahmedkhalf/project.nvim](https://github.com/ahmedkhalf/project.nvim)
- [lewis6991/impatient.nvim](https://github.com/lewis6991/impatient.nvim) --延迟加载插件
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) --缩进空行显示
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim) --启动界面插件
- [antoinemadec/FixCursorHold.nvim](https://github.com/antoinemadec/FixCursorHold.nvim) -- This is needed to fix lsp doc highlight
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [yianwillis/vimcdoc](https://github.com/yianwillis/vimcdoc) --vim中文帮助文档
- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate) --高亮鼠标下单词
- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [voldikss/vim-translator](https://github.com.voldikss/vim-translator) --chinesse translator]
- [kevinhwang91/nvim-hlslens](https://github.com/kevinhwang91/nvim-hlslens) --高亮搜索项

***Colorschemes plugins***

- [lunarvim/colorschemes](https://github.com/lunarvim/colorschemes) -- A bunch of colorschemes you can try out
- [lunarvim/darkplus.nvim](https://github.com/lunarvim/darkplus.nvim)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)

***cmp plugins***

- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) -- The completion plugin
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer) -- buffer completions
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path) -- path completions
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline) -- cmdline completions
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) -- snippet completions
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [f3fora/cmp-spell](https://github.com/f3fora/cmp-spell) -- 拼写建议

***snippets plugins***

- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) --snippet engine
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) -- a bunch of snippets to use

***LSP plugins***

- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) -- enable LSP
- [williamboman/nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer) -- simple to use language server installer
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim) -- for formatters and linters
- [kosayoda/nvim-lightbulb](https://github.com/kosayoda/nvim-lightbulb) -- code action
- [ray-x/lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim) -- show function signature when typing

***Telescope plugins***

- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)

***Treesitter plugins***

- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter),
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)

***Git plugins***

- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim)

***tmux plugins***

- [aserowy/tmux.nvim](https://github.com/aserowy/tmux.nvim)


#### 问题修复
markdow-preview.nvim 无法预览问题  
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
