local M = {}

function M.setup()
  require('base16-colorscheme').setup {
    -- Background tones
    base00 = '#121315', -- Default Background
    base01 = '#1f2022', -- Lighter Background (status bars)
    base02 = '#292a2c', -- Selection Background
    base03 = '#8e9198', -- Comments, Invisibles
    -- Foreground tones
    base04 = '#c4c6ce', -- Dark Foreground (status bars)
    base05 = '#e4e2e4', -- Default Foreground
    base06 = '#e4e2e4', -- Light Foreground
    base07 = '#e4e2e4', -- Lightest Foreground
    -- Accent colors
    base08 = '#ffb4ab', -- Variables, XML Tags, Errors
    base09 = '#dfbbdd', -- Integers, Constants
    base0A = '#c0c7d5', -- Classes, Search Background
    base0B = '#b4c8e8', -- Strings, Diff Inserted
    base0C = '#dfbbdd', -- Regex, Escape Chars
    base0D = '#b4c8e8', -- Functions, Methods
    base0E = '#c0c7d5', -- Keywords, Storage
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
