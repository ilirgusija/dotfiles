local util = require 'lspconfig.util'
return function(on_attach)
    return {
        on_attach = function(client, bufnr)
            on_attach(client, bufnr)
        end,
        cmd = { 'arduino-language-server', '-clangd', '/usr/bin/clangd', '-cli', '/opt/homebrew/bin/arduino-cli', '-cli-config', '$HOME/Library/Arduino15/arduino-cli.yaml', '-fqbn', 'arduino:avr:uno' },
        -- cmd_env = {
        --     GLOB_PATTERN = "*@(.ino|.pde)",
        -- },
        filetypes = { "arduino" },
}
end
