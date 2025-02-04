return {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
    keys = {
        { "<leader>gg", "<cmd>LazyGit<cr>", desc = "Open LazyGit" },
    },
    config = function()
        vim.g.lazygit_floating_window_winblend = 0
        vim.g.lazygit_floating_window_scaling_factor = 1.0
        vim.g.lazygit_floating_window_corner_chars = { "╭", "╮", "╰", "╯" }
        vim.g.lazygit_floating_window_use_plenary = 0
        vim.g.lazygit_use_neovim_remote = 1
    end,
}
