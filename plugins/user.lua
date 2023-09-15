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
  -- {
  --
  -- "Exafunction/codeium.vim",
  -- enabled = true,  
  --   cmd = "Codeium",
  -- -- config = function ()
  --   -- Change '<C-g>' here to any keycode you like.
  --   -- vim.keymap.set('i', '<F8>', function () return vim.fn['codeium#Accept']() end, { expr = true })
  --   -- vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
  --   -- vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
  --   -- vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
  -- -- end
  -- },
--   {
--   "ellisonleao/gruvbox.nvim",
--     
--   config = function()
--     vim.o.background = "dark"
--     vim.g.gruvbox_flat_style = "hard"
--   end,
-- },
--   {"APZelos/blamer.nvim",
--     
--     cmd = { "Blamer" },
--     event = "User AstroFile" ,
-- config = function()
--     vim.g.blamer_delay = 200 
--       vim.g.blamer_show_in_insert_modes = 0 
--       vim.g.blamer_prefix = ' > '
--       vim.g.blamer_show_in_visual_modes = 0 
--       vim.g.blamer_enabled = 1 
--       -- vim.o.highlight Blamer g uifg="lightgrey"
--     end,
--   },
  {"folke/tokyonight.nvim",
    config = function()
    vim.o.background = "light"
  end,
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
--   {
-- 	"Pocco81/auto-save.nvim",
--     cmd = { "AutoSave" },
-- 	config = function()
-- 		 require("auto-save").setup {
--     enabled = true, -- start auto-save whekn the plugin is loaded (i.e. when your package manager loads it)
--     execution_message = {
-- 		message = function() -- message to print on save
-- 			return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
-- 		end,
-- 		dim = 0.18, -- dim the color of `message`
-- 		cleaning_interval = 1250, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
-- 	},
--     trigger_events = {"InsertLeave", "TextChanged"}, -- vim events that trigger auto-save. See :h events
-- 	-- function that determines whether to save thesdsd current buffer or not
-- 	-- return true: if buffer is ok to be saved
-- 	-- return false: if it's not ok to be saved
-- 	condition = function(buf)
-- 		local fn = vim.fn
-- 		local utils = require("auto-save.utils.data")
--
-- 		if
-- 			fn.getbufvar(buf, "&modifiable") == 1 and
-- 			utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
-- 			return true -- met condition(s), can save
-- 		end
-- 		return false -- can't save
-- 	end,
--     write_all_buffers = false, -- write all buffers when the current one meets `condition`
--     debounce_delay = 135, -- saves the file at most every `debounce_delay` milliseconds
-- 	callbacks = { -- functions to be executed at different intervals
-- 		enabling = nil, -- ran when enabling auto-save
-- 		disabling = true, -- ran when disabling auto-save
-- 		before_asserting_save = nil, -- ran before checking `condition`
-- 		before_saving = nil, -- ran before doing the actual save
-- 		after_saving = nil -- ran after doing the actual save
-- 	}
-- }
-- 	end,
-- }, 
  
}
