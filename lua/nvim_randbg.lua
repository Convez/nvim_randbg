local M = {}

M.setup = function (cfg)
  cfg = cfg or {}
  local config = require('config')
  -- Join input config with default one
  local newCfg = config.utils.join(config.default, cfg)
  
  local imgHandler = require('image')
  imgHandler.getImage(newCfg)
  vim.api.nvim_create_autocmd('VimLeave', {
    pattern = '*',
    callback = function()
      vim.fn.system({ "kitty", "@", "set-background-image", "none"})
    end
  })

end

return M
