local plugin_dir = debug.getinfo(1, "S").source:match("@(.*/)") or "./"
local luarocks_path = plugin_dir .. "../.rocks/share/lua/5.1/?.lua;" ..
                      plugin_dir .. "../.rocks/share/lua/5.1/?/init.lua;"
local luarocks_cpath = plugin_dir .. "../.rocks/lib/lua/5.1/?.so;"

package.path = luarocks_path .. package.path
package.cpath = luarocks_cpath .. package.cpath

require("nvim_randbg").setup()
