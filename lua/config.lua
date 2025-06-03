local M = {}  

M.default = {}

M.default.url = "https://picsum.photos"
M.default.width = 1920
M.default.height = 1080
M.default.useGreyscale = true
M.utils = {}
M.utils.join = function (oldCfg, newCfg) 
  for k,v in pairs(newCfg) do
    oldCfg[k] = v
  end
  return oldCfg
end

M.utils.computeUrl = function(cfg)
  local greyscale = ""
  if cfg.useGreyscale then
    greyscale = "?greyscale"
  end
  return string.format("%s/%d/%d%s", cfg.url, cfg.width, cfg.height, greyscale)
end

return M
