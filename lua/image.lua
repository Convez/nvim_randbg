local M = {}
M.getImage = function (cfg)
	local http = require('socket.http')
	local ltn12 = require('ltn12')

	local file, err = io.open('/tmp/nvim_randbg.jpg', 'wb')
	if err then
		print("Error opening file: ",err)
		return
	end


end
return M
