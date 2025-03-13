## Wakatime

To link your wakatime account to your instance of nvim, use the below command then paste your waka time API key.

```vi
:WakaTimeApiKey
```

## Mason Installs

Some of the Mason installs are not automatic, here are a list of LSPs, DAPs, Formatters, ect that need to be manually installed via Mason

to open Mason

```sh
:Mason
```

Here are the list of Mason packages I use. They're not all actively used as a switch back and forth between formatters/lsps sometimes

- black
- ruff
- clangd
- gofumpt
- gopls
- jedi-language-server jedi_language_server
- lua-language-server lua_ls
- prettier
- prettierd
- pyright
- stylua

## Winget Installs

Since I am mostly using this config on Windows, here are some dependencies I need for this config

```sh
winget install --id=GoLang.Go  -e

winget install -e --id OpenJS.NodeJS

winget install BurntSushi.ripgrep.MSVC

winget install GnuWin32.Make

```
