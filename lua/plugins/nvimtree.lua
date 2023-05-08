-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>f', ':NvimTreeFocus<CR>', {noremap = true, silent = true})

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    disable_netrw = true,
    hijack_cursor = true,
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
})
