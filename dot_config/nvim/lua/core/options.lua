local o = vim.opt

-- Inspired by 
-- Terje https://github.com/TerjeLafton/Neovim/blob/main/lua/core/options.lua
-- ThePrimagen https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/set.lua

-- General
o.autowrite = true -- Autowrite file on lost focus
o.clipboard = "unnamedplus" -- Use system clipboard
o.cmdheight = 1 -- The height of the bottom bar
o.confirm = true -- Ask for confirmation when exiting a file with unsaved changes
o.cursorline = true -- Have the cursors current line be shown in a different color
o.hlsearch = false -- Do not highlight all search results
o.incsearch = true -- Incremental search
o.mouse = "a" -- Enable mouse mode
o.signcolumn = "yes" -- Always show the signcolumn
o.updatetime = 50  -- Fast update time
o.colorcolumn = "120"  -- Column at char 120
o.showmode = false -- Don't show mode in the cmdline
o.spelllang = { "en" }
o.termguicolors = true -- True color support
o.updatetime = 300 -- Set cursorhold
o.wildmode = "longest:full,full" -- Command-line completion mode
o.wrap = false -- Disable line wrap

-- Line numbers
o.number = true
o.relativenumber = true

-- Smart tabs
o.smartindent = true -- Insert indents automatically
o.tabstop = 4  -- Number of spaces tabs count for
o.softtabstop = 4 -- Indent size
o.shiftwidth = 4  -- Indent size
o.expandtab = true -- Tabs into spaces
o.shiftround = true -- Round indent
o.number = true -- Print line numbers
o.scrolloff = 8 -- Lines of context on the end of the buffer

-- backup is handled by undotree
-- oooor telescope-undo.nvim...? I'll have to investigate
--o.swapfile = false
--o.backup = false
--o.undodir = os.getenv("HOME") .. "/.vim/undodir"
--o.undofile = true

