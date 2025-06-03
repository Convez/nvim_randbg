local M = {}

M.setup = function (cfg)
	cfg = cfg or {}
	local config = require('config')
	-- Join input config with default one
	local newCfg = config.utils.join(config.default, cfg)
	
	local imgHandler = require('image')
	imgHandler.getImage(newCfg)

end

return M
