vim.api.nvim_set_var("colors_name", "ex-lackluster-matugen")

vim.api.nvim_set_hl(0, "@attribute", { fg = "{{colors.primary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@boolean", { fg = "{{colors.primary_container.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@character", { fg = "{{colors.tertiary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@comment", { fg = "{{colors.surface_variant.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@comment.documentation", { fg = "{{colors.surface_variant.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@comment.error", { fg = "{{colors.error.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@comment.note", { fg = "{{colors.secondary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@comment.todo", { fg = "{{colors.secondary.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "@constant", { fg = "{{colors.primary_container.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@constant.builtin", { fg = "{{colors.secondary.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "@constructor", { fg = "{{colors.secondary.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "@diff.delta", { fg = "{{colors.secondary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@diff.minus", { fg = "{{colors.error.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "@function", { fg = "{{colors.primary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@function.builtin", { fg = "{{colors.outline.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@function.call", { fg = "{{colors.secondary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@function.method", { fg = "{{colors.primary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@function.method.call", { fg = "{{colors.secondary.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "@keyword", { fg = "{{colors.primary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@keyword.exception", { fg = "{{colors.secondary_container.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@keyword.return", { fg = "{{colors.secondary_container.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "@label", { fg = "{{colors.outline.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "@lsp.type.enumMember", { link = "@variable.member" })

vim.api.nvim_set_hl(0, "@markup.heading", { fg = "{{colors.outline.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@markup.italic", { fg = "{{colors.surface_variant.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@markup.link", { fg = "{{colors.secondary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@markup.link.label", { fg = "{{colors.secondary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@markup.link.url", { fg = "{{colors.surface_variant.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@markup.list", { fg = "{{colors.surface_variant.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@markup.list.checked", { fg = "{{colors.tertiary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@markup.list.unchecked", { fg = "{{colors.error.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@markup.math", { fg = "{{colors.error.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@markup.quote", { fg = "{{colors.secondary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@markup.strikethrough", { fg = "{{colors.surface_variant.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@markup.strong", { fg = "{{colors.surface_variant.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "@module.builtin", { fg = "{{colors.outline.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "@number", { fg = "{{colors.secondary.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "@operator", { fg = "{{colors.outline.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "@property", { fg = "{{colors.primary_container.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = "{{colors.outline.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = "{{colors.outline.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@punctuation.special", { fg = "{{colors.outline.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "@string", { fg = "{{colors.tertiary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@string.escape", { fg = "{{colors.tertiary_container.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@string.regexp", { fg = "{{colors.tertiary_container.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@string.special", { fg = "{{colors.tertiary_container.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "@tag", { fg = "{{colors.outline.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@tag.attribute", { fg = "{{colors.surface_variant.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@tag.builtin", { fg = "{{colors.outline.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = "{{colors.outline.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "@type", { fg = "{{colors.primary_container.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@type.builtin", { fg = "{{colors.primary_container.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@type.definition", { fg = "{{colors.on_surface.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "@variable", { fg = "{{colors.on_surface.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = "{{colors.on_surface.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@variable.member", { fg = "{{colors.primary_container.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "@variable.parameter", { fg = "{{colors.secondary_container.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Added", { fg = "{{colors.tertiary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Changed", { fg = "{{colors.secondary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Character", { link = "String" })

vim.api.nvim_set_hl(0, "ColorColumn", { bg = "{{colors.surface_container.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Comment", { fg = "{{colors.surface_variant.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Conceal", { fg = "{{colors.outline_variant.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Conditional", { link = "Keyword" })

vim.api.nvim_set_hl(0, "Constant", { fg = "{{colors.primary_container.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "CurSearch",
  { bg = "{{colors.on_surface.default.hex_stripped}}", fg = "{{colors.surface.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Cursor", { bg = "{{colors.on_surface.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "CursorLine", { bg = "{{colors.surface_container.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "{{colors.primary_container.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Delimiter", { fg = "{{colors.outline.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "DiagnosticDeprecated", { fg = "{{colors.surface_variant.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "{{colors.error.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "{{colors.hint.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "{{colors.info.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiagnosticOk", { fg = "{{colors.tertiary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "{{colors.warning.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "{{colors.error.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = "{{colors.hint.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = "{{colors.info.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiagnosticSignOk", { fg = "{{colors.tertiary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = "{{colors.warning.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", {
  undercurl = true,
  sp = "{{colors.error.default.hex_stripped}}",
  cterm = { undercurl = true },
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", {
  undercurl = true,
  sp = "{{colors.hint.default.hex_stripped}}",
  cterm = { undercurl = true },
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", {
  undercurl = true,
  sp = "{{colors.info.default.hex_stripped}}",
  cterm = { undercurl = true },
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", {
  undercurl = true,
  sp = "{{colors.warning.default.hex_stripped}}",
  cterm = { undercurl = true },
})

vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { fg = "{{colors.surface_variant.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "{{colors.error.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "{{colors.hint.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = "{{colors.info.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextOk", { fg = "{{colors.tertiary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = "{{colors.warning.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "DiffAdd", { fg = "{{colors.tertiary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiffChange", { fg = "{{colors.secondary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiffDelete", { fg = "{{colors.error.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiffText", { fg = "{{colors.outline.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Directory", { fg = "{{colors.outline.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "{{colors.surface_variant.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Error", { fg = "{{colors.error.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "ErrorMsg", { link = "Error" })

vim.api.nvim_set_hl(0, "Exception", { link = "Keyword" })

vim.api.nvim_set_hl(0, "Float", { link = "Constant" })

vim.api.nvim_set_hl(0, "FloatBorder", {
  bg = "{{colors.surface_container.default.hex_stripped}}",
  fg = "{{colors.surface_variant.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "FloatTitle", { fg = "{{colors.outline.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "FoldColumn", { fg = "{{colors.surface_variant.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Folded", { fg = "{{colors.surface_variant.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Function", { fg = "{{colors.secondary.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Identifier", { fg = "{{colors.primary_container.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Keyword", { fg = "{{colors.primary.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Label", { link = "Keyword" })

vim.api.nvim_set_hl(0, "LineNr", { fg = "{{colors.surface_variant.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "MatchParen", {
  bg = "{{colors.tertiary.default.hex_stripped}}",
  fg = "{{colors.on_surface.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "ModeMsg", { fg = "{{colors.primary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = "{{colors.primary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "MsgArea", { fg = "{{colors.primary.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "NonText", { fg = "{{colors.outline.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Normal", {
  fg = "{{colors.on_surface.default.hex_stripped}}",
  bg = "{{colors.surface.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "NormalFloat", {
  fg = "{{colors.on_surface.default.hex_stripped}}",
  bg = "{{colors.surface_container.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "Operator", { fg = "{{colors.outline.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Pmenu", {
  bg = "{{colors.surface_container.default.hex_stripped}}",
  fg = "{{colors.secondary.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "PmenuSbar", {
  bg = "{{colors.surface_variant.default.hex_stripped}}",
  fg = "{{colors.surface_variant.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "PmenuSel", {
  bg = "{{colors.on_surface.default.hex_stripped}}",
  fg = "{{colors.surface.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "PmenuThumb", {
  bg = "{{colors.outline.default.hex_stripped}}",
  fg = "{{colors.outline.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "PreProc", { link = "Keyword" })

vim.api.nvim_set_hl(0, "Question", { fg = "{{colors.secondary.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "QuickFixLine", { fg = "{{colors.tertiary.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Removed", { fg = "{{colors.error.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Repeat", { link = "Keyword" })

vim.api.nvim_set_hl(0, "Search", {
  bg = "{{colors.tertiary.default.hex_stripped}}",
  fg = "{{colors.surface.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "SignColumn", { fg = "{{colors.surface_variant.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Special", { fg = "{{colors.tertiary.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "SpecialComment", { fg = "{{colors.surface_variant.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "SpellBad", {
  undercurl = true,
  cterm = { undercurl = true },
})

vim.api.nvim_set_hl(0, "SpellCap", { link = "SpellBad" })
vim.api.nvim_set_hl(0, "SpellLocal", { link = "SpellBad" })
vim.api.nvim_set_hl(0, "SpellRare", { link = "SpellBad" })

vim.api.nvim_set_hl(0, "Statement", { fg = "{{colors.primary.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "StatusLine", {
  bg = "{{colors.surface_container.default.hex_stripped}}",
  fg = "{{colors.primary_container.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "StatusLineNC", {
  bg = "{{colors.surface_variant.default.hex_stripped}}",
  fg = "{{colors.surface_variant.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "String", { fg = "{{colors.tertiary.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "TabLine", {
  bg = "{{colors.surface_container.default.hex_stripped}}",
  fg = "{{colors.surface_variant.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "TabLineFill", {
  bg = "{{colors.surface_container.default.hex_stripped}}",
  fg = "{{colors.primary_container.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "TabLineSel", {
  bg = "{{colors.on_surface.default.hex_stripped}}",
  fg = "{{colors.surface_container.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "Title", { fg = "{{colors.outline.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Todo", { fg = "{{colors.secondary.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Type", { fg = "{{colors.primary_container.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Visual", {
  bg = "{{colors.on_surface.default.hex_stripped}}",
  fg = "{{colors.surface.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "WarningMsg", { fg = "{{colors.warning.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Whitespace", { fg = "{{colors.surface_variant.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "WinSeparator", { fg = "{{colors.surface_variant.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "lCursor", { bg = "{{colors.on_surface.default.hex_stripped}}" })

vim.api.nvim_create_autocmd("CmdlineEnter", {
  once = true,
  callback = function()
    vim.api.nvim_set_hl(0, "healthError", { fg = "{{colors.error.default.hex_stripped}}" })
    vim.api.nvim_set_hl(0, "healthSuccess", { fg = "{{colors.tertiary.default.hex_stripped}}" })
    vim.api.nvim_set_hl(0, "healthWarning", { fg = "{{colors.warning.default.hex_stripped}}" })
  end,
})

-- Additional UI groups for completeness

vim.api.nvim_set_hl(0, "Boolean", { fg = "{{colors.primary_container.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Character", { fg = "{{colors.tertiary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "{{colors.surface_container.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Comment", { fg = "{{colors.surface_variant.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Conceal", { fg = "{{colors.outline_variant.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Conditional", { fg = "{{colors.primary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Constant", { fg = "{{colors.primary_container.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Debug", { fg = "{{colors.secondary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Define", { fg = "{{colors.primary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Delimiter", { fg = "{{colors.outline.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiffAdd", { fg = "{{colors.tertiary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiffChange", { fg = "{{colors.secondary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiffDelete", { fg = "{{colors.error.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "DiffText", { fg = "{{colors.outline.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Directory", { fg = "{{colors.outline.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Error", { fg = "{{colors.error.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = "{{colors.error.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Exception", { fg = "{{colors.primary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Float", { fg = "{{colors.primary_container.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "FloatBorder", {
  fg = "{{colors.surface_variant.default.hex_stripped}}",
  bg = "{{colors.surface_container.default.hex_stripped}}",
})
vim.api.nvim_set_hl(0, "FloatTitle", { fg = "{{colors.outline.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "FoldColumn", { fg = "{{colors.surface_variant.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Folded", { fg = "{{colors.surface_variant.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Function", { fg = "{{colors.secondary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Identifier", { fg = "{{colors.primary_container.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Ignore", { fg = "{{colors.surface_variant.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "IncSearch", {
  fg = "{{colors.surface.default.hex_stripped}}",
  bg = "{{colors.primary.default.hex_stripped}}",
})
vim.api.nvim_set_hl(0, "Include", { fg = "{{colors.primary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Keyword", { fg = "{{colors.primary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Label", { fg = "{{colors.primary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "{{colors.surface_variant.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Macro", { fg = "{{colors.primary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "MatchParen", {
  fg = "{{colors.on_surface.default.hex_stripped}}",
  bg = "{{colors.tertiary.default.hex_stripped}}",
})
vim.api.nvim_set_hl(0, "ModeMsg", { fg = "{{colors.primary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = "{{colors.primary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "MsgArea", { fg = "{{colors.primary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "NonText", { fg = "{{colors.outline.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Normal", {
  fg = "{{colors.on_surface.default.hex_stripped}}",
  bg = "{{colors.surface.default.hex_stripped}}",
})
vim.api.nvim_set_hl(0, "NormalFloat", {
  fg = "{{colors.on_surface.default.hex_stripped}}",
  bg = "{{colors.surface_container.default.hex_stripped}}",
})
vim.api.nvim_set_hl(0, "Operator", { fg = "{{colors.outline.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Pmenu", {
  fg = "{{colors.secondary.default.hex_stripped}}",
  bg = "{{colors.surface_container.default.hex_stripped}}",
})
vim.api.nvim_set_hl(0, "PmenuSbar", {
  fg = "{{colors.surface_variant.default.hex_stripped}}",
  bg = "{{colors.surface_variant.default.hex_stripped}}",
})
vim.api.nvim_set_hl(0, "PmenuSel", {
  fg = "{{colors.surface.default.hex_stripped}}",
  bg = "{{colors.on_surface.default.hex_stripped}}",
})
vim.api.nvim_set_hl(0, "PmenuThumb", {
  fg = "{{colors.outline.default.hex_stripped}}",
  bg = "{{colors.outline.default.hex_stripped}}",
})
vim.api.nvim_set_hl(0, "PreProc", { fg = "{{colors.primary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Question", { fg = "{{colors.secondary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "QuickFixLine", { fg = "{{colors.tertiary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Removed", { fg = "{{colors.error.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Repeat", { fg = "{{colors.primary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Search", {
  fg = "{{colors.surface.default.hex_stripped}}",
  bg = "{{colors.tertiary.default.hex_stripped}}",
})
vim.api.nvim_set_hl(0, "SignColumn", { fg = "{{colors.surface_variant.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Special", { fg = "{{colors.tertiary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "SpecialComment", { fg = "{{colors.surface_variant.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "SpellBad", {
  undercurl = true,
  cterm = { undercurl = true },
})
vim.api.nvim_set_hl(0, "SpellCap", { link = "SpellBad" })
vim.api.nvim_set_hl(0, "SpellLocal", { link = "SpellBad" })
vim.api.nvim_set_hl(0, "SpellRare", { link = "SpellBad" })
vim.api.nvim_set_hl(0, "Statement", { fg = "{{colors.primary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "StatusLine", {
  fg = "{{colors.primary_container.default.hex_stripped}}",
  bg = "{{colors.surface_container.default.hex_stripped}}",
})
vim.api.nvim_set_hl(0, "StatusLineNC", {
  fg = "{{colors.surface_variant.default.hex_stripped}}",
  bg = "{{colors.surface_variant.default.hex_stripped}}",
})
vim.api.nvim_set_hl(0, "String", { fg = "{{colors.tertiary.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "TabLine", {
  fg = "{{colors.surface_variant.default.hex_stripped}}",
  bg = "{{colors.surface_container.default.hex_stripped}}",
})
vim.api.nvim_set_hl(0, "TabLineFill", {
  fg = "{{colors.primary_container.default.hex_stripped}}",
  bg = "{{colors.surface_container.default.hex_stripped}}",
})
vim.api.nvim_set_hl(0, "TabLineSel", {
  fg = "{{colors.surface_container.default.hex_stripped}}",
  bg = "{{colors.on_surface.default.hex_stripped}}",
})
vim.api.nvim_set_hl(0, "Title", { fg = "{{colors.outline.default.hex_stripped}}" })
vim.api.nvim_set_hl(0, "Todo", { fg = "{{colors.secondary.default.hex_stripped}}" })

-- Final UI groups and fallbacks

vim.api.nvim_set_hl(0, "Type", { fg = "{{colors.primary_container.default.hex_stripped}}" })

vim.api.nvim_set_hl(0, "Underlined", {
  fg = "{{colors.primary.default.hex_stripped}}",
  underline = true,
})

vim.api.nvim_set_hl(0, "VertSplit", {
  fg = "{{colors.surface_variant.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "VisualNOS", {
  bg = "{{colors.surface_container.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "WarningMsg", {
  fg = "{{colors.warning.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "WildMenu", {
  fg = "{{colors.surface.default.hex_stripped}}",
  bg = "{{colors.primary.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "diffAdded", {
  fg = "{{colors.tertiary.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "diffChanged", {
  fg = "{{colors.secondary.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "diffRemoved", {
  fg = "{{colors.error.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "diffOldFile", {
  fg = "{{colors.surface_variant.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "diffNewFile", {
  fg = "{{colors.primary.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "diffFile", {
  fg = "{{colors.outline.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "diffLine", {
  fg = "{{colors.secondary_container.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "diffIndexLine", {
  fg = "{{colors.tertiary_container.default.hex_stripped}}",
})

-- Terminal colors (Matugen‑adaptive)
vim.g.terminal_color_0  = "{{colors.surface.default.hex_stripped}}"
vim.g.terminal_color_1  = "{{colors.error.default.hex_stripped}}"
vim.g.terminal_color_2  = "{{colors.tertiary.default.hex_stripped}}"
vim.g.terminal_color_3  = "{{colors.warning.default.hex_stripped}}"
vim.g.terminal_color_4  = "{{colors.primary.default.hex_stripped}}"
vim.g.terminal_color_5  = "{{colors.secondary.default.hex_stripped}}"
vim.g.terminal_color_6  = "{{colors.tertiary_container.default.hex_stripped}}"
vim.g.terminal_color_7  = "{{colors.on_surface.default.hex_stripped}}"

vim.g.terminal_color_8  = "{{colors.surface_variant.default.hex_stripped}}"
vim.g.terminal_color_9  = "{{colors.error.default.hex_stripped}}"
vim.g.terminal_color_10 = "{{colors.tertiary.default.hex_stripped}}"
vim.g.terminal_color_11 = "{{colors.warning.default.hex_stripped}}"
vim.g.terminal_color_12 = "{{colors.primary.default.hex_stripped}}"
vim.g.terminal_color_13 = "{{colors.secondary.default.hex_stripped}}"
vim.g.terminal_color_14 = "{{colors.tertiary_container.default.hex_stripped}}"
vim.g.terminal_color_15 = "{{colors.on_surface.default.hex_stripped}}"

-- Cursor highlight fallback
vim.api.nvim_set_hl(0, "CursorIM", {
  bg = "{{colors.on_surface.default.hex_stripped}}",
})

-- Popup menu documentation
vim.api.nvim_set_hl(0, "CmpItemAbbr", {
  fg = "{{colors.on_surface.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", {
  fg = "{{colors.surface_variant.default.hex_stripped}}",
  strikethrough = true,
})

vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", {
  fg = "{{colors.primary.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", {
  fg = "{{colors.primary.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "CmpItemKind", {
  fg = "{{colors.secondary.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "CmpItemMenu", {
  fg = "{{colors.surface_variant.default.hex_stripped}}",
})

-- LSP semantic tokens
vim.api.nvim_set_hl(0, "LspCodeLens", {
  fg = "{{colors.surface_variant.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "LspCodeLensSeparator", {
  fg = "{{colors.surface_variant.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", {
  fg = "{{colors.primary.default.hex_stripped}}",
})

-- Treesitter UI
vim.api.nvim_set_hl(0, "TSNodeKey", {
  fg = "{{colors.primary.default.hex_stripped}}",
})

vim.api.nvim_set_hl(0, "TSNodeUnmatched", {
  fg = "{{colors.surface_variant.default.hex_stripped}}",
})

-- Final fallback highlight
vim.api.nvim_set_hl(0, "NormalNC", {
  fg = "{{colors.on_surface.default.hex_stripped}}",
  bg = "{{colors.surface.default.hex_stripped}}",
})
