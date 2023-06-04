-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  -- normal mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command


    -- my own mappings
    -- default mappings for text browsering
    ["J"] = { "^", desc = "Jump to the beginning", noremap = true },
    ["K"] = { "g_", desc = "Jump to the end", noremap = true },
    ["<leader>j"] = { "J", desc = "Joint Lines", noremap = true },
    ["<leader>v"] = { "<C-v>", desc = "Visual Block", noremap = true },
    ["gh"] = {
      function() vim.lsp.buf.hover() end,
      desc = "Hover symbol details",
    },
    ["<C-f>"] = { "@", desc = "use register", noremap = true },
    ["<C-b>"] = { "@@", desc = "use last register", noremap = true },
    ["-"] = {
      function()
        require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)
      end,
      desc = "toggle comment"
    },
    ["L"] = {
      function()
        require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1)
      end,
      desc = "Next buffer"
    },
    ["H"] = {
      function()
        require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1))
      end,
      desc = "Previous buffer"
    },




    -- UI changes
    ["<leader>J"] = {
      function()
        vim.o.background = 'light'
        vim.cmd([[colorscheme astrolight]])
      end,
      desc = "switch theme to light version"
    },
    ["<leader>K"] = {
      function()
        vim.o.background = 'dark'
        vim.cmd([[colorscheme gruvbox]])
      end,
      desc = "switch theme to dark version"
    },


    -- functionality
    ["<F5>"] = { ":Telescope undo<CR>", desc = "undo tree" },
    ["<F6>"] = { ":Navbuddy<CR>", desc = "navigate through code" },
    ["<leader>r"] = { ":e!<CR>", desc = "refresh without saving" },

    -- some bindings for change
    ["<Cr>"] = { "ciw", desc = "change the whole word" }
  },
  -- visual mode
  v = {
    ["J"] = { "^", desc = "Jump to the beginning", noremap = true },
    ["K"] = { "g_", desc = "Jump to the end", noremap = true },
    ["-"] = {
      function()
        require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)
      end,
      desc = "toggle comment"
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
