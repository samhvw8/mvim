#!/usr/bin/env bash

set -e

# REF https://github.com/neovim/nvim-lsp/blob/master/lua/nvim_lsp/pyls_ms.lua


# os=$(uname -s | tr "[:upper:]" "[:lower:]")
# case $os in
#     linux)
#         curl -L https://dot.net/v1/dotnet-install.sh | bash -s -- -i "./.dotnet"
#         ;;
#     darwin)
#         brew install --cask dotnet
#         ;;
#     *) ;;
# esac

os=$(uname -s | tr "[:upper:]" "[:lower:]")
case $os in
    linux)
        system="linux"
        ;;
    darwin)
        system="osx"
        ;;
    *) ;;
esac

version="0.5.59"
url="https://pvsc.azureedge.net/python-language-server-stable/Python-Language-Server-${system}-x64.${version}.nupkg"

nupkg="./pyls.nupkg"
lsp_path="$HOME/.local/share/nvim/python-ms-lsp"
lsp_path_data="$lsp_path/data"
mkdir -p "$lsp_path"
curl -L "$url" -o "$nupkg"
unzip "$nupkg" -d  "$lsp_path_data"

cat <<EOF >pyls-ms
#!/usr/bin/env bash
DIR="$lsp_path_data"
dotnet $lsp_path_data/Microsoft.Python.LanguageServer.dll
EOF

chmod +x pyls-ms
mv pyls-ms "$lsp_path"
rm "$nupkg"


