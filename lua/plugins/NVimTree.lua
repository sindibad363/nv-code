vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup { -- BEGIN_DEFAULT_OPTS
      auto_reload_on_write = true,
      create_in_closed_folder = false,
      disable_netrw = false,
      hijack_cursor = false,
      hijack_netrw = true,
      hijack_unnamed_buffer_when_opening = false,
      ignore_buffer_on_setup = false,
      open_on_setup = true,
      open_on_setup_file = true,
      sort_by = "name",
      root_dirs = {},
      prefer_startup_root = false,
      sync_root_with_cwd = false,
      reload_on_bufenter = false,
      respect_buf_cwd = false,
      on_attach = "disable",
      remove_keymaps = false,
      select_prompts = false,
      view = {
        adaptive_size = true,
        centralize_selection = false,
        width = 15,
        hide_root_folder = false,
        side = "left",
        preserve_window_proportions = false,
        number = false,
        relativenumber = false,
        signcolumn = "yes",
        mappings = {
          custom_only = true,
          list = {
            { key = "<A-t>", action = "" },
            { key = { "<2-LeftMouse>", "<CR>" }, action = "edit"},
	    --{ key = "<C-f>", action = "toggle" },
	    --{ key = { "<A-LeftMouse>" }, action = "tabnew" },
            --{ key = { "<R>"}, action = "rename" }
            -- BEGIN_DEFAULT_MAPPINGS
            { key = { "<CR>", "o", "<2-LeftMouse>" }, action = ""}, -- "edit" },
            { key = "<C-e>",                          action = ""}, --"edit_in_place" },
            { key = "O",                              action = ""}, --"edit_no_picker" },
            { key = { "<S-w>"},    		      action = "cd"}, --"cd" },
            { key = "<C-v>",                          action = ""}, --"vsplit" },
            { key = "<C-x>",                          action = ""}, --"split" },
            { key = "<C-t>",                          action = ""}, --"tabnew" },
            { key = "<",                              action = ""}, --"prev_sibling" },
            { key = ">",                              action = ""}, --"next_sibling" },
            { key = "P",                              action = ""}, --"parent_node" },
            { key = "<BS>",                           action = ""}, --"close_node" },
            { key = "<Tab>",                          action = ""}, --"preview" },
            { key = "K",                              action = ""}, --"first_sibling" },
            { key = "J",                              action = ""}, --"last_sibling" },
            { key = "I",                              action = ""}, --"toggle_git_ignored" },
            { key = "H",                              action = ""}, --"toggle_dotfiles" },
            { key = "U",                              action = ""}, --"toggle_custom" },
            { key = "R",                              action = ""}, --"refresh" },
            { key = "a",                              action = ""}, --"create" },
            { key = "d",                              action = ""}, --"remove" },
            { key = "D",                              action = ""}, --"trash" },
            { key = "r",                              action = ""}, --"rename" },
            { key = "<C-r>",                          action = ""}, --"full_rename" },
            { key = "x",                              action = ""}, --"cut" },
            { key = "c",                              action = ""}, --"copy" },
            { key = "p",                              action = ""}, --"paste" },
            { key = "y",                              action = ""}, --"copy_name" },
            { key = "Y",                              action = ""}, --"copy_path" },
            { key = "gy",                             action = ""}, --"copy_absolute_path" },
            { key = "[e",                             action = ""}, --"prev_diag_item" },
            { key = "[c",                             action = ""}, --"prev_git_item" },
            { key = "]e",                             action = ""}, --"next_diag_item" },
            { key = "]c",                             action = ""}, --"next_git_item" },
            { key = "-",                              action = ""}, --"dir_up" },
            { key = "s",                              action = ""}, --"system_open" },
            { key = "f",                              action = ""}, --"live_filter" },
            { key = "F",                              action = ""}, --"clear_live_filter" },
            { key = "q",                              action = ""}, --"close" },
            { key = "W",                              action = ""}, --"collapse_all" },
            { key = "E",                              action = ""}, --"expand_all" },
            { key = "S",                              action = ""}, --"search_node" },
            { key = ".",                              action = ""}, --"run_file_command" },
            { key = "<C-k>",                          action = ""}, --"toggle_file_info" },
            { key = "g?",                             action = ""}, --"toggle_help" },
            { key = "m",                              action = ""}, --"toggle_mark" },
            { key = "bmv",                            action = ""}, --"bulk_move" },
          --} -- END_DEFAULT_MAPPINGS

          },
        },
        float = {
          enable = false,
          quit_on_focus_loss = true,
          open_win_config = {
            relative = "editor",
            border = "rounded",
            width = 30,
            height = 30,
            row = 1,
            col = 1,
          },
        },
      },
      renderer = {
        add_trailing = false,
        group_empty = false,
        highlight_git = false,
        full_name = false,
        highlight_opened_files = "none",
        root_folder_label = ":~:s?$?/..?",
        indent_width = 2,
        indent_markers = {
          enable = false,
          inline_arrows = true,
          icons = {
            corner = "└",
            edge = "│",
            item = "│",
            bottom = "─",
            none = " ",
          },
        },
        icons = {
          webdev_colors = true,
          git_placement = "before",
          padding = " ",
          symlink_arrow = " ➛ ",
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
          glyphs = {
            default = "",
            symlink = "",
            bookmark = "",
            folder = {
              arrow_closed = "",
              arrow_open = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },
            git = {
              unstaged = "✗",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "★",
              deleted = "",
              ignored = "◌",
            },
          },
        },
        special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
        symlink_destination = true,
      },
      hijack_directories = {
        enable = true,
        auto_open = true,
      },
      update_focused_file = {
        enable = false,
        update_root = false,
        ignore_list = {},
      },
      ignore_ft_on_setup = {},
      system_open = {
        cmd = "",
        args = {},
      },
      diagnostics = {
        enable = false,
        show_on_dirs = false,
        show_on_open_dirs = true,
        debounce_delay = 50,
        severity = {
          min = vim.diagnostic.severity.HINT,
          max = vim.diagnostic.severity.ERROR
        },
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
      filters = {
        dotfiles = false,
        custom = {},
        exclude = {},
      },
      filesystem_watchers = {
        enable = true,
        debounce_delay = 50,
        ignore_dirs = {},
      },
      git = {
        enable = true,
        ignore = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
        timeout = 400,
      },
      actions = {
        use_system_clipboard = true,
        change_dir = {
          enable = true,
          global = false,
          restrict_above_cwd = false,
        },
        expand_all = {
          max_folder_discovery = 300,
          exclude = {},
        },
        file_popup = {
          open_win_config = {
            col = 1,
            row = 1,
            relative = "cursor",
            border = "shadow",
            style = "minimal",
          },
        },
        open_file = {
          quit_on_open = false,
          resize_window = true,
          window_picker = {
            enable = true,
            chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
            exclude = {
              filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
              buftype = { "nofile", "terminal", "help" },
            },
          },
        },
        remove_file = {
          close_window = true,
        },
      },
      trash = {
        cmd = "gio trash",
        require_confirm = true,
      },
      live_filter = {
        prefix = "[FILTER]: ",
        always_show_folders = true,
      },
      tab = {
        sync = {
          open = false,
          close = false,
          ignore = {},
        },
      },
      notify = {
        threshold = vim.log.levels.INFO,
      },
      log = {
        enable = false,
        truncate = false,
        types = {
          all = false,
          config = false,
          copy_paste = false,
          dev = false,
          diagnostics = false,
          git = false,
          profile = false,
          watcher = false,
        },
      },
} -- END_DEFAULT_OPTS

--require('nvim-tree').toggle(false, true)

local function tab_win_closed(winnr)
  local tabnr = vim.api.nvim_win_get_tabpage(winnr)
  local bufnr = vim.api.nvim_win_get_buf(winnr)
  local buf_info = vim.fn.getbufinfo(bufnr)[1]
  local tab_wins = vim.tbl_filter(function(w) return w~=winnr end, vim.api.nvim_tabpage_list_wins(tabnr))
  local tab_bufs = vim.tbl_map(vim.api.nvim_win_get_buf, tab_wins)
  if buf_info.name:match(".*NvimTree_%d*$") then            -- close buffer was nvim tree
    -- Close all nvim tree on :q
    if not vim.tbl_isempty(tab_bufs) then                      -- and was not the last window (not closed automatically by code below)
      api.tree.close()
    end
  else                                                      -- else closed buffer was normal buffer
    if #tab_bufs == 1 then                                    -- if there is only 1 buffer left in the tab
      local last_buf_info = vim.fn.getbufinfo(tab_bufs[1])[1]
      if last_buf_info.name:match(".*NvimTree_%d*$") then       -- and that buffer is nvim tree
        vim.schedule(function ()
          if #vim.api.nvim_list_wins() == 1 then                -- if its the last buffer in vim
            vim.cmd "quit"                                        -- then close all of vim
          else                                                  -- else there are more tabs open
            vim.api.nvim_win_close(tab_wins[1], true)             -- then close only the tab
          end
        end)
      end
    end
  end
end

vim.api.nvim_create_autocmd("WinClosed", {
  callback = function ()
    local winnr = tonumber(vim.fn.expand("<amatch>"))
    vim.schedule_wrap(tab_win_closed(winnr))
  end,
  nested = true
})
