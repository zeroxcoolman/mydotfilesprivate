-- Matugen-based colorscheme template

vim.api.nvim_set_var("colors_name", "ex-catppuccin-matugen")

-- Treesitter / semantic
vim.api.nvim_set_hl(0, "@attribute", { link = "Constant" })
vim.api.nvim_set_hl(0, "@comment.documentation", { link = "Comment" })
vim.api.nvim_set_hl(
	0,
	"@comment.error",
	{ bg = "{{colors.tertiary_container.default.hex}}", fg = "{{colors.on_tertiary_container.default.hex}}" }
)
vim.api.nvim_set_hl(
	0,
	"@comment.note",
	{ bg = "{{colors.secondary_container.default.hex}}", fg = "{{colors.on_secondary_container.default.hex}}" }
)
vim.api.nvim_set_hl(
	0,
	"@comment.todo",
	{ bg = "{{colors.tertiary_container.default.hex}}", fg = "{{colors.on_tertiary_container.default.hex}}" }
)
vim.api.nvim_set_hl(
	0,
	"@comment.warning",
	{ bg = "{{colors.tertiary_container.default.hex}}", fg = "{{colors.on_tertiary_container.default.hex}}" }
)
vim.api.nvim_set_hl(0, "@constant.builtin", { fg = "{{colors.tertiary.default.hex}}" })
vim.api.nvim_set_hl(0, "@constant.macro", { link = "Macro" })
vim.api.nvim_set_hl(0, "@constructor", { fg = "{{colors.secondary.default.hex}}" })
vim.api.nvim_set_hl(0, "@diff.delta", { link = "diffChanged" })
vim.api.nvim_set_hl(0, "@diff.minus", { link = "diffRemoved" })
vim.api.nvim_set_hl(0, "@diff.plus", { link = "diffAdded" })
vim.api.nvim_set_hl(0, "@function.builtin", { fg = "{{colors.tertiary.default.hex}}" })
vim.api.nvim_set_hl(0, "@function.call", { link = "Function" })
vim.api.nvim_set_hl(0, "@function.macro", { fg = "{{colors.secondary_container.default.hex}}" })
vim.api.nvim_set_hl(0, "@function.method", { link = "Function" })
vim.api.nvim_set_hl(0, "@function.method.call", { link = "Function" })
vim.api.nvim_set_hl(0, "@keyword.conditional", { link = "Conditional" })
vim.api.nvim_set_hl(0, "@keyword.conditional.ternary", { link = "Operator" })
vim.api.nvim_set_hl(0, "@keyword.coroutine", { link = "Keyword" })
vim.api.nvim_set_hl(0, "@keyword.debug", { link = "Exception" })
vim.api.nvim_set_hl(0, "@keyword.directive", { link = "PreProc" })
vim.api.nvim_set_hl(0, "@keyword.directive.define", { link = "Define" })
vim.api.nvim_set_hl(0, "@keyword.exception", { link = "Exception" })
vim.api.nvim_set_hl(0, "@keyword.function", { fg = "{{colors.primary.default.hex}}" })
vim.api.nvim_set_hl(0, "@keyword.import", { link = "Include" })
vim.api.nvim_set_hl(0, "@keyword.modifier", { link = "Keyword" })
vim.api.nvim_set_hl(0, "@keyword.operator", { link = "Operator" })
vim.api.nvim_set_hl(0, "@keyword.repeat", { link = "Repeat" })
vim.api.nvim_set_hl(0, "@keyword.return", { fg = "{{colors.primary.default.hex}}" })
vim.api.nvim_set_hl(0, "@keyword.type", { link = "Keyword" })
vim.api.nvim_set_hl(0, "@lsp.type.interface", { fg = "{{colors.secondary.default.hex}}" })

vim.api.nvim_set_hl(0, "@markup.heading", { bold = true, fg = "{{colors.secondary.default.hex}}" })
vim.api.nvim_set_hl(0, "@markup.italic", { fg = "{{colors.on_surface_variant.default.hex}}", italic = true })
vim.api.nvim_set_hl(0, "@markup.link", { link = "Tag" })
vim.api.nvim_set_hl(0, "@markup.link.label", { link = "Label" })
vim.api.nvim_set_hl(0, "@markup.link.url", { fg = "{{colors.primary.default.hex}}", italic = true, underline = true })
vim.api.nvim_set_hl(0, "@markup.list", { link = "Special" })
vim.api.nvim_set_hl(0, "@markup.list.checked", { fg = "{{colors.secondary.default.hex}}" })
vim.api.nvim_set_hl(0, "@markup.list.unchecked", { fg = "{{colors.outline.default.hex}}" })
vim.api.nvim_set_hl(0, "@markup.math", { fg = "{{colors.secondary.default.hex}}" })
vim.api.nvim_set_hl(0, "@markup.quote", { bold = true, fg = "{{colors.on_surface_variant.default.hex}}" })
vim.api.nvim_set_hl(0, "@markup.raw", { fg = "{{colors.secondary_container.default.hex}}" })
vim.api.nvim_set_hl(
	0,
	"@markup.strikethrough",
	{ fg = "{{colors.on_surface_variant.default.hex}}", strikethrough = true }
)
vim.api.nvim_set_hl(0, "@markup.strong", { bold = true, fg = "{{colors.on_surface_variant.default.hex}}" })
vim.api.nvim_set_hl(0, "@markup.underline", { link = "Underlined" })

vim.api.nvim_set_hl(0, "@module", { fg = "{{colors.on_surface_variant.default.hex}}", italic = true })
vim.api.nvim_set_hl(0, "@property", { fg = "{{colors.on_surface_variant.default.hex}}" })
vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = "{{colors.outline.default.hex}}" })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { link = "Delimiter" })
vim.api.nvim_set_hl(0, "@string.documentation", { fg = "{{colors.secondary_container.default.hex}}" })
vim.api.nvim_set_hl(0, "@string.escape", { fg = "{{colors.tertiary.default.hex}}" })
vim.api.nvim_set_hl(0, "@string.regexp", { fg = "{{colors.tertiary.default.hex}}" })
vim.api.nvim_set_hl(0, "@string.special", { link = "Special" })
vim.api.nvim_set_hl(0, "@string.special.path", { link = "Special" })
vim.api.nvim_set_hl(0, "@string.special.symbol", { fg = "{{colors.secondary.default.hex}}" })
vim.api.nvim_set_hl(
	0,
	"@string.special.url",
	{ fg = "{{colors.primary.default.hex}}", italic = true, underline = true }
)
vim.api.nvim_set_hl(0, "@tag", { fg = "{{colors.primary.default.hex}}" })
vim.api.nvim_set_hl(0, "@tag.attribute", { fg = "{{colors.secondary_container.default.hex}}", italic = true })
vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = "{{colors.outline.default.hex}}" })
vim.api.nvim_set_hl(0, "@type.builtin", { fg = "{{colors.secondary.default.hex}}" })
vim.api.nvim_set_hl(0, "@type.definition", { link = "Type" })
vim.api.nvim_set_hl(0, "@variable", { fg = "{{colors.on_surface.default.hex}}" })
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = "{{colors.primary.default.hex}}" })
vim.api.nvim_set_hl(0, "@variable.member", { fg = "{{colors.on_surface_variant.default.hex}}" })
vim.api.nvim_set_hl(0, "@variable.parameter", { fg = "{{colors.on_surface_variant.default.hex}}" })

-- Core groups
vim.api.nvim_set_hl(0, "Boolean", { fg = "{{colors.tertiary.default.hex}}" })
vim.api.nvim_set_hl(0, "Character", { fg = "{{colors.secondary_container.default.hex}}" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "{{colors.surface_variant.default.hex}}" })
vim.api.nvim_set_hl(0, "Comment", { fg = "{{colors.on_surface_variant.default.hex}}", italic = true })
vim.api.nvim_set_hl(0, "Conceal", { fg = "{{colors.outline.default.hex}}" })
vim.api.nvim_set_hl(0, "Conditional", { fg = "{{colors.primary.default.hex}}", italic = true })
vim.api.nvim_set_hl(0, "Constant", { fg = "{{colors.tertiary.default.hex}}" })

vim.api.nvim_set_hl(0, "Cursor", { bg = "{{colors.primary.default.hex}}", fg = "{{colors.on_primary.default.hex}}" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "{{colors.surface_variant.default.hex}}" })
vim.api.nvim_set_hl(0, "CursorIM", { bg = "{{colors.primary.default.hex}}", fg = "{{colors.on_primary.default.hex}}" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "{{colors.surface_variant.default.hex}}" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "{{colors.on_surface_variant.default.hex}}" })

vim.api.nvim_set_hl(0, "Delimiter", { fg = "{{colors.outline.default.hex}}" })

-- Diagnostics
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "{{colors.tertiary.default.hex}}", italic = true })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "{{colors.tertiary_container.default.hex}}", italic = true })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "{{colors.secondary.default.hex}}", italic = true })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "{{colors.tertiary.default.hex}}", italic = true })
vim.api.nvim_set_hl(0, "DiagnosticOk", { fg = "{{colors.secondary.default.hex}}", italic = true })

vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "{{colors.tertiary.default.hex}}" })
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = "{{colors.tertiary_container.default.hex}}" })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = "{{colors.secondary.default.hex}}" })
vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = "{{colors.tertiary.default.hex}}" })
vim.api.nvim_set_hl(0, "DiagnosticSignOk", { fg = "{{colors.secondary.default.hex}}" })

vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { sp = "{{colors.tertiary.default.hex}}", underline = true })
vim.api.nvim_set_hl(
	0,
	"DiagnosticUnderlineWarn",
	{ sp = "{{colors.tertiary_container.default.hex}}", underline = true }
)
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { sp = "{{colors.secondary.default.hex}}", underline = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { sp = "{{colors.tertiary.default.hex}}", underline = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineOk", { sp = "{{colors.secondary.default.hex}}", underline = true })

-- Diff
vim.api.nvim_set_hl(0, "DiffAdd", { bg = "{{colors.secondary_container.default.hex}}" })
vim.api.nvim_set_hl(0, "DiffChange", { bg = "{{colors.surface_variant.default.hex}}" })
vim.api.nvim_set_hl(0, "DiffDelete", { bg = "{{colors.tertiary_container.default.hex}}" })
vim.api.nvim_set_hl(0, "DiffText", { bg = "{{colors.primary_container.default.hex}}" })

vim.api.nvim_set_hl(0, "Directory", { fg = "{{colors.secondary.default.hex}}" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "{{colors.surface.default.hex}}" })
vim.api.nvim_set_hl(0, "Error", { fg = "{{colors.tertiary.default.hex}}" })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = "{{colors.tertiary.default.hex}}", bold = true, italic = true })

vim.api.nvim_set_hl(0, "FloatBorder", { fg = "{{colors.secondary.default.hex}}" })
vim.api.nvim_set_hl(0, "FloatTitle", { fg = "{{colors.primary.default.hex}}" })

vim.api.nvim_set_hl(0, "FoldColumn", { fg = "{{colors.outline.default.hex}}" })
vim.api.nvim_set_hl(
	0,
	"Folded",
	{ bg = "{{colors.surface_variant.default.hex}}", fg = "{{colors.secondary.default.hex}}" }
)

vim.api.nvim_set_hl(0, "Function", { fg = "{{colors.secondary.default.hex}}" })
vim.api.nvim_set_hl(0, "Identifier", { fg = "{{colors.secondary.default.hex}}" })

vim.api.nvim_set_hl(0, "Include", { fg = "{{colors.primary.default.hex}}" })
vim.api.nvim_set_hl(0, "Keyword", { fg = "{{colors.primary.default.hex}}" })
vim.api.nvim_set_hl(0, "Label", { fg = "{{colors.secondary.default.hex}}" })

vim.api.nvim_set_hl(0, "LineNr", { fg = "{{colors.surface_variant.default.hex}}" })
vim.api.nvim_set_hl(0, "LspCodeLens", { fg = "{{colors.outline.default.hex}}" })
vim.api.nvim_set_hl(
	0,
	"LspInlayHint",
	{ bg = "{{colors.surface_variant.default.hex}}", fg = "{{colors.outline.default.hex}}" }
)

vim.api.nvim_set_hl(0, "Macro", { fg = "{{colors.primary.default.hex}}" })
vim.api.nvim_set_hl(
	0,
	"MatchParen",
	{ bg = "{{colors.surface_variant.default.hex}}", fg = "{{colors.tertiary.default.hex}}", bold = true }
)

vim.api.nvim_set_hl(0, "ModeMsg", { fg = "{{colors.on_surface.default.hex}}", bold = true })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = "{{colors.secondary.default.hex}}" })
vim.api.nvim_set_hl(0, "NonText", { fg = "{{colors.outline.default.hex}}" })

-- Core Normal groups (with transparency option)
vim.api.nvim_set_hl(0, "Normal", { fg = "{{colors.on_background.default.hex}}", bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC", { fg = "{{colors.on_background.default.hex}}", bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = "{{colors.on_surface.default.hex}}", bg = "NONE" })

vim.api.nvim_set_hl(0, "Number", { fg = "{{colors.tertiary.default.hex}}" })
vim.api.nvim_set_hl(0, "Operator", { fg = "{{colors.secondary.default.hex}}" })

vim.api.nvim_set_hl(
	0,
	"Pmenu",
	{ bg = "{{colors.surface_variant.default.hex}}", fg = "{{colors.on_surface_variant.default.hex}}" }
)
vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "{{colors.surface_variant.default.hex}}" })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "{{colors.outline.default.hex}}" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "{{colors.surface.default.hex}}", bold = true })

vim.api.nvim_set_hl(0, "PreProc", { fg = "{{colors.tertiary.default.hex}}" })
vim.api.nvim_set_hl(0, "Question", { fg = "{{colors.secondary.default.hex}}" })

vim.api.nvim_set_hl(0, "Repeat", { fg = "{{colors.primary.default.hex}}" })
vim.api.nvim_set_hl(
	0,
	"Search",
	{ bg = "{{colors.secondary_container.default.hex}}", fg = "{{colors.on_secondary_container.default.hex}}" }
)

vim.api.nvim_set_hl(0, "SignColumn", { fg = "{{colors.surface_variant.default.hex}}", bg = "NONE" })

vim.api.nvim_set_hl(0, "Special", { fg = "{{colors.tertiary.default.hex}}" })
vim.api.nvim_set_hl(0, "SpecialKey", { link = "NonText" })

vim.api.nvim_set_hl(0, "Statement", { fg = "{{colors.primary.default.hex}}" })

vim.api.nvim_set_hl(
	0,
	"StatusLine",
	{ bg = "{{colors.surface.default.hex}}", fg = "{{colors.on_surface.default.hex}}" }
)
vim.api.nvim_set_hl(
	0,
	"StatusLineNC",
	{ bg = "{{colors.surface.default.hex}}", fg = "{{colors.on_surface_variant.default.hex}}" }
)

vim.api.nvim_set_hl(0, "StorageClass", { fg = "{{colors.secondary.default.hex}}" })
vim.api.nvim_set_hl(0, "String", { fg = "{{colors.secondary.default.hex}}" })
vim.api.nvim_set_hl(0, "Structure", { fg = "{{colors.secondary.default.hex}}" })

vim.api.nvim_set_hl(
	0,
	"TabLine",
	{ bg = "{{colors.surface_variant.default.hex}}", fg = "{{colors.outline.default.hex}}" }
)
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "{{colors.surface.default.hex}}" })
vim.api.nvim_set_hl(0, "TabLineSel", { fg = "{{colors.on_surface.default.hex}}", bg = "NONE" })

vim.api.nvim_set_hl(0, "Tag", { fg = "{{colors.on_surface_variant.default.hex}}", bold = true })

vim.api.nvim_set_hl(0, "Title", { fg = "{{colors.secondary.default.hex}}", bold = true })

vim.api.nvim_set_hl(0, "Todo", {
	bg = "{{colors.tertiary_container.default.hex}}",
	fg = "{{colors.on_tertiary_container.default.hex}}",
	bold = true,
})

vim.api.nvim_set_hl(0, "Type", { fg = "{{colors.secondary.default.hex}}" })

vim.api.nvim_set_hl(0, "Visual", { bg = "{{colors.surface_variant.default.hex}}", bold = true })
vim.api.nvim_set_hl(0, "VisualNOS", { bg = "{{colors.surface_variant.default.hex}}", bold = true })

vim.api.nvim_set_hl(0, "WarningMsg", { fg = "{{colors.tertiary_container.default.hex}}" })
vim.api.nvim_set_hl(0, "Whitespace", { fg = "{{colors.surface_variant.default.hex}}" })

vim.api.nvim_set_hl(0, "WinBar", { fg = "{{colors.primary.default.hex}}" })
vim.api.nvim_set_hl(0, "WinBarNC", { link = "WinBar" })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "{{colors.outline.default.hex}}" })

-- Rainbow / markdown
vim.api.nvim_set_hl(0, "rainbow1", { fg = "{{colors.tertiary.default.hex}}" })
vim.api.nvim_set_hl(0, "rainbow2", { fg = "{{colors.tertiary.default.hex}}" })
vim.api.nvim_set_hl(0, "rainbow3", { fg = "{{colors.secondary.default.hex}}" })
vim.api.nvim_set_hl(0, "rainbow4", { fg = "{{colors.secondary_container.default.hex}}" })
vim.api.nvim_set_hl(0, "rainbow5", { fg = "{{colors.tertiary_container.default.hex}}" })
vim.api.nvim_set_hl(0, "rainbow6", { fg = "{{colors.primary.default.hex}}" })

vim.api.nvim_set_hl(0, "markdownH1", { link = "rainbow1" })
vim.api.nvim_set_hl(0, "markdownH2", { link = "rainbow2" })
vim.api.nvim_set_hl(0, "markdownH3", { link = "rainbow3" })
vim.api.nvim_set_hl(0, "markdownH4", { link = "rainbow4" })
vim.api.nvim_set_hl(0, "markdownH5", { link = "rainbow5" })
vim.api.nvim_set_hl(0, "markdownH6", { link = "rainbow6" })

-- Transparent background tweaks
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "{{colors.surface.default.hex}}", bg = "NONE" })
