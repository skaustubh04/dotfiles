-- sample hyprlock.lua
-- for more configuration options, refer https://wiki.hyprland.org/Hypr-Ecosystem/hyprlock
-- rendered text in all widgets supports pango markup
-- shortcuts to clear password buffer: ESC, Ctrl+U, Ctrl+Backspace

local font = "Monospace"

return {
  general = {
    hide_cursor = false,
  },

  -- auth = {
  --   fingerprint = {
  --     enabled = true,
  --     ready_message = "Scan fingerprint to unlock",
  --     present_message = "Scanning...",
  --     retry_delay = 250, -- milliseconds
  --   },
  -- },

  animations = {
    enabled = true,
    bezier = { "linear", 1, 1, 0, 0 },
    animation = {
      -- each animation entry: { name, duration, priority, easing }
      { "fadeIn", 1, 5, "linear" },
      { "fadeOut", 1, 5, "linear" },
      { "inputFieldDots", 1, 2, "linear" },
    },
  },

  background = {
    monitor = nil,        -- empty value => all monitors
    path = "screenshot",
    blur_passes = 3,
  },

  ["input-field"] = {
    monitor = nil,
    size = { "20%", "5%" },
    outline_thickness = 3,
    inner_color = "rgba(0, 0, 0, 0.0)", -- no fill

    -- gradients as strings (hyprlock accepts CSS-like gradients in conf; keep as string)
    outer_color = "rgba(33ccffee) rgba(00ff99ee) 45deg",
    check_color = "rgba(00ff99ee) rgba(ff6633ee) 120deg",
    fail_color = "rgba(ff6633ee) rgba(ff0066ee) 40deg",

    font_color = {143, 143, 143}, -- rgb
    fade_on_empty = false,
    rounding = 15,

    font_family = font,
    placeholder_text = "Input password...",
    fail_text = "$PAMFAIL$FPRINTFAIL",

    -- check_text = "Authenticating...",
    -- dots_text_format = "*",
    -- dots_size = 0.4,
    dots_spacing = 0.3,

    -- hide_input = true,

    position = {0, -20},
    halign = "center",
    valign = "center",
  },

  -- TIME label
  {
    type = "label",
    monitor = nil,
    text = "$TIME", -- variable substitution supported
    font_size = 90,
    font_family = font,
    position = {-30, 0},
    halign = "right",
    valign = "top",
  },

  -- DATE label (updates every 60000 ms)
  {
    type = "label",
    monitor = nil,
    text = 'cmd[update:60000] date +"%A, %d %B %Y"',
    font_size = 25,
    font_family = font,
    position = {-30, -150},
    halign = "right",
    valign = "top",
  },

  -- Layout indicator / clickable label
  {
    type = "label",
    monitor = nil,
    text = "$LAYOUT[en,ru]",
    font_size = 24,
    onclick = "hyprctl switchxkblayout all next",
    position = {250, -20},
    halign = "center",
    valign = "center",
  },
}

