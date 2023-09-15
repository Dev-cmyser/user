-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  
  -- maps = require("../astronvim.utils").empty_map_table()
  -- maps.n["<F7>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
  -- maps.t["<F7>"] = maps.n["<F7>"],
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", desc = "window left" },
    -- ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", desc ="window right" },
    -- ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", desc ="window down" },
    -- ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", desc ="window up" },
     L = {
       function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
       desc = "Next buffer",
     },
     H = {
       function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
       desc = "Previous buffer",
     },
    -- ["<Alt>m"]  = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
     -- ["<F8>"] = { "<cmd>ToggleTerm!<cr>", desc = "Toggle terminal" },
    -- mappings seen under group name "Buffer"
    -- ["<F8>"] ={ "<cmd>lua require('toggleterm').close()<cr>", desc = "Hide terminal" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
     -- maps = require("../astronvim.utils").empty_map_table(), 

     ["<leader>n"] = false, 

     -- N = false,
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
