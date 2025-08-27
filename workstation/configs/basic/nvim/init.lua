-- Line Numbers
vim.opt.number = true

-- Tabs & indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Highlight the current line
vim.opt.cursorline = true

-- True color support
vim.opt.termguicolors = true

-- Removes auto comment
vim.api.nvim_create_autocmd("FileType",{
    pattern = "*",
    callback = function()
        vim.opt_local.formatoptions:remove({ "c", "r", "o"})
    end,
})

