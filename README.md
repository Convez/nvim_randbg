# nvim_randbg

For this to be working, kitty need to have remote control activated

N.B.
Nix sets the OPENSSL_DIR and OPENSSL_LIBDIR, but those need to be manually passed to luarocks when installing packages like luasec in the .rocks folder
`luarocks --tree ./.rocks --lua-version 5.1 install luasec OPENSSL_DIR=$OPENSSL_DIR OPENSSL_LIBDIR=$OPENSSL_LIBDIR`
