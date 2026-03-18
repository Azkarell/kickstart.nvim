local M = {}

function M.setup()
  require('base16-colorscheme').setup {
    -- Background tones
    base00 = '#131314', -- Default Background
    base01 = '#201f20', -- Lighter Background (status bars)
    base02 = '#2a2a2b', -- Selection Background
    base03 = '#909096', -- Comments, Invisibles
    -- Foreground tones
    base04 = '#c6c6cc', -- Dark Foreground (status bars)
    base05 = '#e5e2e3', -- Default Foreground
    base06 = '#e5e2e3', -- Light Foreground
    base07 = '#e5e2e3', -- Lightest Foreground
    -- Accent colors
    base08 = '#ffb4ab', -- Variables, XML Tags, Errors
    base09 = '#d6c0cf', -- Integers, Constants
    base0A = '#c6c6cd', -- Classes, Search Background
    base0B = '#c2c6d7', -- Strings, Diff Inserted
    base0C = '#d6c0cf', -- Regex, Escape Chars
    base0D = '#c2c6d7', -- Functions, Methods
    base0E = '#c6c6cd', -- Keywords, Storage
    base0F = '#93000a', -- Deprecated, Embedded Tags
  }
end

-- Register a signal handler for SIGUSR1 (matugen updates)
local signal = vim.uv.new_signal()
signal:start(
  'sigusr1',
  vim.schedule_wrap(function()
    package.loaded['matugen'] = nil
    require('matugen').setup()
  end)
)

return M
