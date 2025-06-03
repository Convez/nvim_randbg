local M = {}
M.getImage = function (cfg)
  local http = require('socket.http')
  local ltn12 = require('ltn12')
  local img_path = '/tmp/nvim_randbg.jpg' 
  local file, err = io.open(img_path, 'wb')
  if err then
    print("Error opening file: ",err)
    return
  end
  local imageSink = ltn12.sink.file(file, "Could not write image")

  local cfgUtils = require('config').utils
  http.request{
    url = cfgUtils.computeUrl(cfg), 
    sink = imageSink
  }
  print('asking kitty to set bg image')
  vim.fn.system({ "kitty", "@", "set-background-image", img_path })
end
return M
