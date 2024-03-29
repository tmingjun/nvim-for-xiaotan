local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- vim.cmd [[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--   augroup end
-- ]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
    git = {
        clone_timeout = 300,
        -- default_url_format = 'https://gitclone.com/github.com/%s',
        default_url_format = 'https://github.com/%s',
    }
}

-- Install your plugins here
return packer.startup(function(use)
    -- My plugins here
    use "wbthomason/packer.nvim" -- Have packer manage itself
    use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
    use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
    use "numToStr/Comment.nvim" -- Easily comment stuff
    use "kyazdani42/nvim-web-devicons"
    -- use "kyazdani42/nvim-tree.lua"
    use "akinsho/bufferline.nvim" --bufferline显示插件
    use "moll/vim-bbye" --buffer插件，提供buffer删除功能
    use "nvim-lualine/lualine.nvim" --状态栏插件
    use "akinsho/toggleterm.nvim" --终端插件
    use "ahmedkhalf/project.nvim"
    use "lewis6991/impatient.nvim" --延迟加载插件
    use "lukas-reineke/indent-blankline.nvim" --缩进空行显示
    use "goolord/alpha-nvim" --启动界面插件
    use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
    use "folke/which-key.nvim"
    use "yianwillis/vimcdoc" --vim中文帮助文档
    use "RRethy/vim-illuminate" --高亮鼠标下单词
    use "iamcco/markdown-preview.nvim"
    use "voldikss/vim-translator" --chinesse translator
    -- use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
    -- use "davidgranstrom/nvim-markdown-preview" --markdown插件
    use 'kevinhwang91/nvim-hlslens' --高亮搜索项

    -- Colorschemes
--    use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
--    use "lunarvim/darkplus.nvim"
--    use { "catppuccin/nvim", as = "catppuccin" }
    use "rafamadriz/neon"

    -- cmp plugins
    use "hrsh7th/nvim-cmp" -- The completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"
    -- use "f3fora/cmp-spell" -- 拼写建议

    -- snippets
    use "L3MON4D3/LuaSnip" --snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    -- LSP
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/nvim-lsp-installer" -- simple to use language server installer
    -- use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
    use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
    -- use "kosayoda/nvim-lightbulb" -- code action
    use "ray-x/lsp_signature.nvim" -- show function signature when typing

    -- Telescope
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-file-browser.nvim"
    -- use "nvim-telescope/telescope-project.nvim"
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use { "nvim-telescope/telescope-live-grep-args.nvim" }
    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }
    use "JoosepAlviste/nvim-ts-context-commentstring"

    -- Git
    use "lewis6991/gitsigns.nvim"
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

    --tmux
    use "aserowy/tmux.nvim"

    --neo-tree
    -- Unless you are still migrating, remove the deprecated commands from v1.x
    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }
    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
