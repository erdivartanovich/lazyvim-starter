return {
  "nvim-lualine/lualine.nvim",
  opts = function()
    -- PERF: we don't need this lualine require madness 🤷
    local lualine_require = require("lualine_require")
    lualine_require.require = require

    local icons = require("lazyvim.config").icons
    local pywal_core = require("pywal.core")
    local colors = pywal_core.get_colors()

    vim.o.laststatus = vim.g.lualine_laststatus
    local opts = {
      options = {
        theme = "auto",
        globalstatus = vim.o.laststatus == 3,
        disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
        component_separators = { left = "", right = " " },
      },
      sections = {
        lualine_a = {},
        lualine_b = {
          {
            function()
              return "!󰨞 "
            end,
            color = function()
              -- auto change color according to neovims mode
              local mode_color = {
                n = colors.color5,
                i = colors.color2,
                v = colors.color4,
                [""] = colors.color4,
                V = colors.color4,
                c = colors.color6,
                no = colors.color2,
                s = colors.color1,
                S = colors.color1,
                [""] = colors.color1,
                ic = colors.color7,
                R = colors.color3,
                Rv = colors.color3,
                cv = colors.color2,
                ce = colors.color2,
                r = colors.color2,
                rm = colors.color2,
                ["r?"] = colors.color2,
                ["!"] = colors.color6,
                t = colors.color1,
              }
              return { fg = mode_color[vim.fn.mode()] }
            end,
            padding = { left = 3, right = 3 },
          },
        },
        lualine_c = {
          "branch",
          LazyVim.lualine.root_dir(),
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          { LazyVim.lualine.pretty_path() },
        },
        lualine_x = {
        -- stylua: ignore
        {
          function() return require("noice").api.status.mode.get() end,
          cond = function() return package.loaded["noice"] and require("noice").api.status.mode.has() end,
          color = function() return LazyVim.ui.fg("Constant") end,
        },
        -- stylua: ignore
        -- stylua: ignore
        {
          "diagnostics",
          symbols = {
            error = icons.diagnostics.Error,
            warn = icons.diagnostics.Warn,
            info = icons.diagnostics.Info,
            hint = icons.diagnostics.Hint,
          },
        },
        -- stylua: ignore
        {
          function() return require("noice").api.status.command.get() end,
          cond = function() return package.loaded["noice"] and require("noice").api.status.command.has() end,
          color = function() return LazyVim.ui.fg("Statement") end,
        },
        -- stylua: ignore
        {
          function() return "  " .. require("dap").status() end,
          cond = function() return package.loaded["dap"] and require("dap").status() ~= "" end,
          color = function() return LazyVim.ui.fg("Debug") end,
        },
        -- stylua: ignore
        {
          require("lazy.status").updates,
          cond = require("lazy.status").has_updates,
          color = function() return LazyVim.ui.fg("Special") end,
        },
          {
            "diff",
            symbols = {
              added = icons.git.added,
              modified = icons.git.modified,
              removed = icons.git.removed,
            },
            source = function()
              local gitsigns = vim.b.gitsigns_status_dict
              if gitsigns then
                return {
                  added = gitsigns.added,
                  modified = gitsigns.changed,
                  removed = gitsigns.removed,
                }
              end
            end,
          },
        },
        lualine_y = {
          { "progress", separator = " ", padding = { left = 1, right = 0 } },
          { "location", padding = { left = 0, right = 1 } },
        },
        lualine_z = {},
      },
      extensions = { "neo-tree", "lazy" },
    }

    -- do not add trouble symbols if aerial is enabled
    if vim.g.trouble_lualine then
      local trouble = require("trouble")
      local symbols = trouble.statusline
        and trouble.statusline({
          mode = "symbols",
          groups = {},
          title = false,
          filter = { range = true },
          format = "{kind_icon}{symbol.name:Normal}",
          hl_group = "lualine_c_normal",
        })
      table.insert(opts.sections.lualine_c, {
        symbols and symbols.get,
        cond = symbols and symbols.has,
      })
    end

    return opts
  end,
}
