local wk = require("which-key")
local ts_builtin = require('telescope.builtin')
--local ts_repo_builtin = require('telescope').extensions.repo


-- Define mappings
wk.add({
    { "<leader>f",  group = "Find" },
    { "<leader>fb", ts_builtin.buffers,   desc = "Buffers" },
    { "<leader>ff", ts_builtin.find_files, desc = "Find Files" },
    { "<leader>fg", ts_builtin.live_grep, desc = "Live Grep" },
    { "<leader>fh", ts_builtin.help_tags, desc = "Help Tags" },
   -- { "<leader>fr", function() ts_repo_builtin.list{search_dirs = {"~/Dev"}} end, desc = "Search Repos"},
})


local lsp_builtin = vim.lsp.buf

wk.add({
    { "<leader>g", group = "Lsp"},
    { "<leader>gg", lsp_builtin.hover, desc = "Definition on Hover", mode = "n"},
    { "<leader>gd", lsp_builtin.definition, desc = 'Go to Definition', mode = "n"},
    { "<leader>gD", lsp_builtin.declaration, desc = 'Go to Declaration', mode = "n"},
    { "<leader>gi", lsp_builtin.implementation, desc = "Go to Implementation", mode = "n"},
    { "<leader>go", lsp_builtin.type_definition, desc = 'Go to Type Definition', mode = "n"},
    { "<leader>gr", lsp_builtin.references, desc = 'Show References', mode = "n"},
    { "<leader>gs", lsp_builtin.signature_help, desc = "Display Signature Information", mode = "n"},
    { "<leader><F2>", lsp_builtin.rename, desc = "Rename Symbol", mode = "n"},
    { "<leader>gf", function() lsp_builtin.format({async = true}) end, desc = "Reformat Buffer", mode = {"n", "x"}},
    { "<leader><F4>", lsp_builtin.code_action, desc = "Select Code Action", mode = "n"},
})
