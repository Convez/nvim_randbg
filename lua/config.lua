local M = {}  

M.default = {}

M.default.url = "https://picsum.photos"
M.default.width = 1920
M.default.height = 1080

M.utils.join = function (oldCfg, newCfg) 
  for k,v in pairs(newCfg) do
    oldCfg[k] = v
  end
  return oldCfg
end

M.utils.computeUrl = function(cfg)
  return string.format("%s/%d/%d", cfg.url, cfg.width, cfg.height)
end

return M
