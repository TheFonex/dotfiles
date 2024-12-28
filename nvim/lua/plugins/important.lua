return {
  -- the colorscheme should be available when starting Neovim
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
         -- load the colorscheme here
        vim.cmd([[colorscheme tokyonight-night]])
        end,
    },
    {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        },
    keys = {
        {
            "<leader>h",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },
    {
    "dstein64/vim-startuptime",
    -- lazy-load on a command
    cmd = "StartupTime",
    -- init is called during startup. Configuration for vim plugins typically should be set in an init 
    init = function()
      vim.g.startuptime_tries = 10
    end,
    },

    
}
