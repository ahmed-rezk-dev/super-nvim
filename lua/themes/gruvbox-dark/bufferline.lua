local Bufferline = {
  BufferLineFill = { fg = C.bl_active_fg, bg = C.bl_active_bg },
  BufferLineBackground = { fg = C.bl_active_fg, bg = C.bl_active_bg },
  BufferLineBufferVisible = { fg = C.bl_active_fg, bg = C.bl_active_bg },
  BufferLineBufferSelected = { fg = C.bl_active_fg, bg = C.bl_active_bg },
  -- tabs
  BufferLineTab = { fg = C.bl_active_fg, bg = C.bl_active_bg },
  BufferLineTabSelected = { fg = C.bl_active_fg, bg = C.bl_active_bg },
  BufferLineTabClose = { fg = C.bl_active_fg, bg = C.bl_active_bg },
  BufferLineIndicator = { fg = C.bl_active_fg, bg = C.bl_active_bg },
  BufferLineIndicatorSelected = { fg = C.bl_active_fg, bg = C.bl_active_bg },
  -- separators
  BufferLineSeparator = { fg = C.bl_active_fg, bg = C.bl_active_bg },
  BufferLineSeparatorVisible = { fg = C.bl_active_fg, bg = C.bl_active_bg },
  BufferLineSeparatorSelected = { fg = C.bl_active_fg, bg = C.bl_active_bg },
  -- modified buffers
  BufferLineModified = { fg = C.bl_active_fg, bg = C.bl_active_bg },
  BufferLineModifiedVisible = { fg = C.bl_active_fg, bg = C.bl_active_bg },
  BufferLineModifiedSelected = { fg = C.bl_active_fg, bg = C.bl_active_bg },
  -- close buttons
  BufferLineCLoseButtonVisible = { fg = C.bl_active_fg, bg = C.bl_active_bg },
  BufferLineCLoseButton = { fg = C.bl_active_fg, bg = C.bl_active_bg },
  BufferLineCLoseButtonSelected = { fg = C.bl_active_fg, bg = C.bl_active_bg },

  BufferCurrent = { fg = C.bl_active_fg, bg = C.bl_active_bg },
  BufferCurrentIndex = { fg = C.fg, bg = C.bg },
  BufferCurrentMod = { fg = C.info_yellow, bg = C.bg },
  BufferCurrentSign = { fg = C.hint_blue, bg = C.bg },
  BufferCurrentTarget = { fg = C.red, bg = C.bg, style = "bold" },
  BufferVisible = { fg = C.fg, bg = C.bg },
  BufferVisibleIndex = { fg = C.fg, bg = C.bg },
  BufferVisibleMod = { fg = C.info_yellow, bg = C.bg },
  BufferVisibleSign = { fg = C.hint_blue, bg = C.bg },
  BufferVisibleTarget = { fg = C.red, bg = C.bg, style = "bold" },
  BufferInactive = { fg = C.gray, bg = C.alt_bg },
  BufferInactiveIndex = { fg = C.gray, bg = C.alt_bg },
  BufferInactiveMod = { fg = C.info_yellow, bg = C.alt_bg },
  BufferInactiveSign = { fg = C.gray, bg = C.alt_bg },
  BufferInactiveTarget = { fg = C.red, bg = C.alt_bg, style = "bold" },
  
}

return Bufferline
