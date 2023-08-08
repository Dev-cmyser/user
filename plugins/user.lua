return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
  "ellisonleao/gruvbox.nvim",
    
  config = function()
    vim.o.background = "dark"
    vim.g.gruvbox_flat_style = "hard"
  end,
},
  {"APZelos/blamer.nvim",
    
    cmd = { "Blamer" },
    event = "User AstroFile" ,
config = function()
    vim.g.blamer_delay = 200 
      vim.g.blamer_show_in_insert_modes = 0 
      vim.g.blamer_prefix = ' > '
      vim.g.blamer_show_in_visual_modes = 0 
      vim.g.blamer_enabled = 1 
      -- vim.o.highlight Blamer g uifg="lightgrey"
    end,
  },
  {"folke/tokyonight.nvim",
    config = function()
    vim.o.background = "light"
  end,
  },
  
}
