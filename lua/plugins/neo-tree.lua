return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",
    keys = {
        {
            "<leader>ft",
            function()
                require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
            end,
            desc = "NeoTree",
        },
    },
    init = function()
        vim.g.neo_tree_remove_legacy_commands = 1
    end,
    opts = {
        default_component_configs = {
            indent = {
                expander_collapsed = "",
                expander_expanded = "",
                expander_highlight = "NeoTreeExpander",
                with_expanders = true,
            },
        },
        filesystem = {
            bind_to_cwd = false,
            follow_current_file = {
                enabled = true,
            },
            use_libuv_file_watcher = true,
        },
        open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
        sources = { "filesystem", "buffers", "git_status", "document_symbols" },
        window = {
            mappings = {
                ["<space>"] = "none",
                ["O"] = {
                    function(state)
                        require("lazy.util").open(state.tree:get_node().path, { system = true })
                    end,
                    desc = "Open with System Application",
                },
                ["Y"] = {
                    function(state)
                        local node = state.tree:get_node()
                        local path = node:get_id()
                        vim.fn.setreg("+", path, "c")
                    end,
                    desc = "Copy Path to Clipboard",
                },
            },
        },
    },
}
