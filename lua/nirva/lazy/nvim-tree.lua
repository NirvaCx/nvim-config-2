return {
    "nvim-tree/nvim-tree.lua",
    opts = {
        sort = {
            sorter = "case_sensitive",
        },
        view = {
            width = 45,
            side = "right",
        },
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = false,
        },
        disable_netrw = false,
        actions = {
            open_file = {
                quit_on_open = false,
            },
        },
    }
}
