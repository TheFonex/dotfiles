local wk = require("which-key")
local ts_builtin = require('telescope.builtin')
local ts_repo_builtin = require('telescope').extensions.repo


-- Define mappings
wk.add({
    { "<leader>f",  group = "Find" },
    { "<leader>fb", ts_builtin.buffers,                                                             desc = "Buffers" },
    { "<leader>ff", ts_builtin.find_files,                                                          desc = "Find Files" },
    { "<leader>fg", ts_builtin.live_grep,                                                           desc = "Live Grep" },
    { "<leader>fh", ts_builtin.help_tags,                                                           desc = "Help Tags" },
    { "<leader>fr", function() ts_repo_builtin.list { search_dirs = { "~/Dev", "~/.config" } } end, desc = "Search Repos" },
    { "<leader>fp", function() vim.cmd("Telescope projects") end,                                   desc = "Search Projects" },
    { "<leader>fs", function() vim.cmd("ProjectRoot") end,                                          desc = "Set Root" },
})


local lsp_builtin = vim.lsp.buf

wk.add({
    { "<leader>g",     group = "Lsp" },
    { "<leader>gg",    lsp_builtin.hover,                                   desc = "Definition on Hover",           mode = "n" },
    { "<leader>gd",    lsp_builtin.definition,                              desc = 'Go to Definition',              mode = "n" },
    { "<leader>gD",    lsp_builtin.declaration,                             desc = 'Go to Declaration',             mode = "n" },
    { "<leader>gi",    lsp_builtin.implementation,                          desc = "Go to Implementation",          mode = "n" },
    { "<leader>go",    lsp_builtin.type_definition,                         desc = 'Go to Type Definition',         mode = "n" },
    { "<leader>gr",    lsp_builtin.references,                              desc = 'Show References',               mode = "n" },
    { "<leader>gs",    lsp_builtin.signature_help,                          desc = "Display Signature Information", mode = "n" },
    { "<leader>ge",    vim.lsp.diagnostic.show_line_diagnostics,            desc = "Show Line Diagnostics",         mode = "n" },
    { "<leader>g<F2>", lsp_builtin.rename,                                  desc = "Rename Symbol",                 mode = "n" },
    { "<leader>gf",    function() lsp_builtin.format({ async = true }) end, desc = "Reformat Buffer",               mode = { "n", "x" } },
    { "<leader>g<F4>", lsp_builtin.code_action,                             desc = "Select Code Action",            mode = "n" },
})


wk.add({
    { "<leader><F5>", function() vim.cmd("CompilerOpen") end,          desc = "Open Compiler" },
    {
        "<leader><S-F5>",
        function()
            vim.cmd("CompilerStop")
            vim.cmd("CompilerRedo")
        end,
        desc = "Redo Last Task"
    },
    { "<leader><F6>", function() vim.cmd("CompilerToggleResults") end, desc = "Toggle Compiler Results" },
})



wk.add({
    { "<leader>q",  group = "Quit" },
    { "<leader>qq", function() vim.cmd("qall") end, desc = "Quit All" },
    { "<leader>qa", function() vim.cmd("qa") end,   desc = "Quit All" },
    { "<leader>qf", function() vim.cmd("q") end,    desc = "Quit" },
    { "<leader>qw", function() vim.cmd("wq") end,   desc = "Write and Quit" },
    { "<leader>qW", function() vim.cmd("wqa") end,  desc = "Write and Quit All" },
})


local swenv_builtin = require('swenv.api')

wk.add({
    { "<leader>p",  group = "Python" },
    { "<leader>pv", swenv_builtin.pick_venv,        desc = "Pick Virtual Environment" },
    { "<leader>ps", swenv_builtin.set_venv,         desc = "Set Virtual Environment" },
    { "<leader>pd", swenv_builtin.get_current_venv, desc = "Get Current Virtual Environment" },
})


wk.add({
    { "<leader>c", group = "Comment" },
})
