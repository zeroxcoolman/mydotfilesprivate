-- Core UI Groups (Soft Bright)

-- Main editor background + text
vim.api.nvim_set_hl(0, "Normal", {
	fg = "{{colors.primary_container.default.hex}}",
	bg = "{{colors.surface_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "NormalNC", {
	fg = "{{colors.primary_container.default.hex}}",
	bg = "{{colors.surface_container.default.hex}}",
})

-- Cursor + cursorline
vim.api.nvim_set_hl(0, "Cursor", {
	bg = "{{colors.primary.default.hex}}",
	fg = "{{colors.surface.default.hex}}",
})

vim.api.nvim_set_hl(0, "CursorLine", {
	bg = "{{colors.surface_container_high.default.hex}}",
})

vim.api.nvim_set_hl(0, "CursorLineNr", {
	fg = "{{colors.primary.default.hex}}",
})

-- Line numbers
vim.api.nvim_set_hl(0, "LineNr", {
	fg = "{{colors.secondary_container.default.hex}}",
})

-- Columns, whitespace, end markers
vim.api.nvim_set_hl(0, "ColorColumn", {
	bg = "{{colors.surface_container_high.default.hex}}",
})

vim.api.nvim_set_hl(0, "Whitespace", {
	fg = "{{colors.surface_variant.default.hex}}",
})

vim.api.nvim_set_hl(0, "EndOfBuffer", {
	fg = "{{colors.surface_variant.default.hex}}",
})

-- Window separators
vim.api.nvim_set_hl(0, "VertSplit", {
	fg = "{{colors.surface_variant.default.hex}}",
})

vim.api.nvim_set_hl(0, "WinSeparator", {
	fg = "{{colors.surface_variant.default.hex}}",
})

-- Sign column
vim.api.nvim_set_hl(0, "SignColumn", {
	fg = "{{colors.secondary_container.default.hex}}",
})

-- Statusline

vim.api.nvim_set_hl(0, "StatusLine", {
	fg = "{{colors.primary_container.default.hex}}",
	bg = "{{colors.surface_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "StatusLineNC", {
	fg = "{{colors.surface_variant.default.hex}}",
	bg = "{{colors.surface_variant.default.hex}}",
})

-- Tabs
vim.api.nvim_set_hl(0, "TabLine", {
	fg = "{{colors.secondary_container.default.hex}}",
	bg = "{{colors.surface_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "TabLineSel", {
	fg = "{{colors.surface_container.default.hex}}",
	bg = "{{colors.primary.default.hex}}",
})

vim.api.nvim_set_hl(0, "TabLineFill", {
	fg = "{{colors.primary_container.default.hex}}",
	bg = "{{colors.surface_container.default.hex}}",
})

-- Titles, messages, misc UI
vim.api.nvim_set_hl(0, "Title", {
	fg = "{{colors.primary.default.hex}}",
})

vim.api.nvim_set_hl(0, "MsgArea", {
	fg = "{{colors.primary.default.hex}}",
})

vim.api.nvim_set_hl(0, "ModeMsg", {
	fg = "{{colors.primary.default.hex}}",
})

vim.api.nvim_set_hl(0, "MoreMsg", {
	fg = "{{colors.primary.default.hex}}",
})

vim.api.nvim_set_hl(0, "WarningMsg", {
	fg = "{{colors.tertiary.default.hex}}",
})

-- Visual selection
vim.api.nvim_set_hl(0, "Visual", {
	fg = "{{colors.surface.default.hex}}",
	bg = "{{colors.primary.default.hex}}",
})

-- Matching parentheses
vim.api.nvim_set_hl(0, "MatchParen", {
	fg = "{{colors.surface.default.hex}}",
	bg = "{{colors.tertiary.default.hex}}",
})

-- Non-text characters
vim.api.nvim_set_hl(0, "NonText", {
	fg = "{{colors.outline.default.hex}}",
})

-- Syntax Groups (Soft Bright)

-- Comments: soft, readable, never too dark

-- Comments: soft, readable, never muddy
vim.api.nvim_set_hl(0, "@comment", {
	fg = "{{colors.secondary_container.default.hex}}",
})
vim.api.nvim_set_hl(0, "@comment.documentation", {
	fg = "{{colors.secondary_container.default.hex}}",
})
vim.api.nvim_set_hl(0, "@comment.note", {
	fg = "{{colors.secondary.default.hex}}",
})
vim.api.nvim_set_hl(0, "@comment.todo", {
	fg = "{{colors.secondary.default.hex}}",
})
vim.api.nvim_set_hl(0, "@comment.error", {
	fg = "{{colors.tertiary_container.default.hex}}",
})

-- Strings: warm, expressive, unified
vim.api.nvim_set_hl(0, "@string", {
	fg = "{{colors.tertiary.default.hex}}",
})
vim.api.nvim_set_hl(0, "@string.escape", {
	fg = "{{colors.tertiary_container.default.hex}}",
})
vim.api.nvim_set_hl(0, "@string.regexp", {
	fg = "{{colors.tertiary_container.default.hex}}",
})
vim.api.nvim_set_hl(0, "@string.special", {
	fg = "{{colors.tertiary_container.default.hex}}",
})

-- Keywords: softened, readable
vim.api.nvim_set_hl(0, "@keyword", {
	fg = "{{colors.primary_container.default.hex}}",
})
vim.api.nvim_set_hl(0, "@keyword.exception", {
	fg = "{{colors.secondary_container.default.hex}}",
})
vim.api.nvim_set_hl(0, "@keyword.return", {
	fg = "{{colors.secondary_container.default.hex}}",
})

-- Functions: unified with strings
vim.api.nvim_set_hl(0, "@function", {
	fg = "{{colors.tertiary.default.hex}}",
})
vim.api.nvim_set_hl(0, "@function.builtin", {
	fg = "{{colors.secondary_container.default.hex}}",
})
vim.api.nvim_set_hl(0, "@function.call", {
	fg = "{{colors.secondary.default.hex}}",
})
vim.api.nvim_set_hl(0, "@function.method", {
	fg = "{{colors.tertiary.default.hex}}",
})
vim.api.nvim_set_hl(0, "@function.method.call", {
	fg = "{{colors.secondary.default.hex}}",
})

-- Variables: neutral, readable
vim.api.nvim_set_hl(0, "@variable", {
	fg = "{{colors.on_surface.default.hex}}",
})
vim.api.nvim_set_hl(0, "@variable.builtin", {
	fg = "{{colors.on_surface.default.hex}}",
})
vim.api.nvim_set_hl(0, "@variable.member", {
	fg = "{{colors.primary_container.default.hex}}",
})
vim.api.nvim_set_hl(0, "@variable.parameter", {
	fg = "{{colors.secondary_container.default.hex}}",
})

-- Constants + numbers
vim.api.nvim_set_hl(0, "@constant", {
	fg = "{{colors.primary_container.default.hex}}",
})
vim.api.nvim_set_hl(0, "@constant.builtin", {
	fg = "{{colors.secondary.default.hex}}",
})
vim.api.nvim_set_hl(0, "@number", {
	fg = "{{colors.secondary.default.hex}}",
})

-- Operators + punctuation
vim.api.nvim_set_hl(0, "@operator", {
	fg = "{{colors.outline.default.hex}}",
})
vim.api.nvim_set_hl(0, "@punctuation.bracket", {
	fg = "{{colors.outline.default.hex}}",
})
vim.api.nvim_set_hl(0, "@punctuation.delimiter", {
	fg = "{{colors.outline.default.hex}}",
})
vim.api.nvim_set_hl(0, "@punctuation.special", {
	fg = "{{colors.outline.default.hex}}",
})

-- Types
vim.api.nvim_set_hl(0, "@type", {
	fg = "{{colors.primary_container.default.hex}}",
})
vim.api.nvim_set_hl(0, "@type.builtin", {
	fg = "{{colors.primary_container.default.hex}}",
})
vim.api.nvim_set_hl(0, "@type.definition", {
	fg = "{{colors.on_surface.default.hex}}",
})

-- Tags (HTML, XML, JSX)
vim.api.nvim_set_hl(0, "@tag", {
	fg = "{{colors.outline.default.hex}}",
})
vim.api.nvim_set_hl(0, "@tag.attribute", {
	fg = "{{colors.secondary_container.default.hex}}",
})
vim.api.nvim_set_hl(0, "@tag.builtin", {
	fg = "{{colors.outline.default.hex}}",
})
vim.api.nvim_set_hl(0, "@tag.delimiter", {
	fg = "{{colors.outline.default.hex}}",
})

-- Constructors
vim.api.nvim_set_hl(0, "@constructor", {
	fg = "{{colors.secondary.default.hex}}",
})

-- Labels
vim.api.nvim_set_hl(0, "@label", {
	fg = "{{colors.outline.default.hex}}",
})

-- Markup (Markdown, org-mode, etc.)
vim.api.nvim_set_hl(0, "@markup.heading", {
	fg = "{{colors.primary.default.hex}}",
})
vim.api.nvim_set_hl(0, "@markup.italic", {
	fg = "{{colors.secondary_container.default.hex}}",
})
vim.api.nvim_set_hl(0, "@markup.strong", {
	fg = "{{colors.secondary_container.default.hex}}",
})
vim.api.nvim_set_hl(0, "@markup.quote", {
	fg = "{{colors.secondary.default.hex}}",
})
vim.api.nvim_set_hl(0, "@markup.link", {
	fg = "{{colors.secondary.default.hex}}",
})
vim.api.nvim_set_hl(0, "@markup.link.label", {
	fg = "{{colors.secondary.default.hex}}",
})
vim.api.nvim_set_hl(0, "@markup.link.url", {
	fg = "{{colors.secondary_container.default.hex}}",
})
vim.api.nvim_set_hl(0, "@markup.list", {
	fg = "{{colors.secondary_container.default.hex}}",
})
vim.api.nvim_set_hl(0, "@markup.list.checked", {
	fg = "{{colors.tertiary.default.hex}}",
})
vim.api.nvim_set_hl(0, "@markup.list.unchecked", {
	fg = "{{colors.error.default.hex}}",
})
vim.api.nvim_set_hl(0, "@markup.math", {
	fg = "{{colors.tertiary_container.default.hex}}",
})
vim.api.nvim_set_hl(0, "@markup.strikethrough", {
	fg = "{{colors.secondary_container.default.hex}}",
})

-- LSP + Treesitter (Soft Bright)

-- LSP Semantic Tokens
vim.api.nvim_set_hl(0, "@lsp.type.enumMember", {
	link = "@variable.member",
})

vim.api.nvim_set_hl(0, "LspCodeLens", {
	fg = "{{colors.secondary_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "LspCodeLensSeparator", {
	fg = "{{colors.secondary_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", {
	fg = "{{colors.primary.default.hex}}",
})

-- Treesitter Structural UI
vim.api.nvim_set_hl(0, "TSNodeKey", {
	fg = "{{colors.primary.default.hex}}",
})

vim.api.nvim_set_hl(0, "TSNodeUnmatched", {
	fg = "{{colors.secondary_container.default.hex}}",
})

-- Treesitter Markup (structural)
vim.api.nvim_set_hl(0, "@markup.heading", {
	fg = "{{colors.primary.default.hex}}",
})

vim.api.nvim_set_hl(0, "@markup.italic", {
	fg = "{{colors.secondary_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "@markup.strong", {
	fg = "{{colors.secondary_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "@markup.quote", {
	fg = "{{colors.secondary.default.hex}}",
})

vim.api.nvim_set_hl(0, "@markup.link", {
	fg = "{{colors.secondary.default.hex}}",
})

vim.api.nvim_set_hl(0, "@markup.link.label", {
	fg = "{{colors.secondary.default.hex}}",
})

vim.api.nvim_set_hl(0, "@markup.link.url", {
	fg = "{{colors.secondary_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "@markup.list", {
	fg = "{{colors.secondary_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "@markup.list.checked", {
	fg = "{{colors.tertiary.default.hex}}",
})

vim.api.nvim_set_hl(0, "@markup.list.unchecked", {
	fg = "{{colors.error.default.hex}}",
})

vim.api.nvim_set_hl(0, "@markup.math", {
	fg = "{{colors.error.default.hex}}",
})

vim.api.nvim_set_hl(0, "@markup.strikethrough", {
	fg = "{{colors.secondary_container.default.hex}}",
})

-- Diff + Diagnostic (Soft Bright)

-- Diff colors (calm but expressive)
vim.api.nvim_set_hl(0, "DiffAdd", {
	fg = "{{colors.tertiary.default.hex}}",
})

vim.api.nvim_set_hl(0, "DiffChange", {
	fg = "{{colors.secondary.default.hex}}",
})

vim.api.nvim_set_hl(0, "DiffDelete", {
	fg = "{{colors.error.default.hex}}",
})

vim.api.nvim_set_hl(0, "DiffText", {
	fg = "{{colors.primary.default.hex}}",
})

-- Git-style diff aliases
vim.api.nvim_set_hl(0, "Added", {
	fg = "{{colors.tertiary.default.hex}}",
})

vim.api.nvim_set_hl(0, "Changed", {
	fg = "{{colors.secondary.default.hex}}",
})

vim.api.nvim_set_hl(0, "Removed", {
	fg = "{{colors.error.default.hex}}",
})

-- Diagnostic text (soft, readable)

vim.api.nvim_set_hl(0, "DiagnosticError", {
	fg = "{{colors.on_error_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "DiagnosticWarn", {
	fg = "{{colors.tertiary.default.hex}}",
})

vim.api.nvim_set_hl(0, "DiagnosticInfo", {
	fg = "{{colors.secondary.default.hex}}",
})

vim.api.nvim_set_hl(0, "DiagnosticHint", {
	fg = "{{colors.secondary_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "DiagnosticOk", {
	fg = "{{colors.tertiary.default.hex}}",
})

-- Diagnostic signs (gutter)
vim.api.nvim_set_hl(0, "DiagnosticSignError", {
	fg = "{{colors.error.default.hex}}",
})

vim.api.nvim_set_hl(0, "DiagnosticSignWarn", {
	fg = "{{colors.tertiary.default.hex}}",
})

vim.api.nvim_set_hl(0, "DiagnosticSignInfo", {
	fg = "{{colors.secondary.default.hex}}",
})

vim.api.nvim_set_hl(0, "DiagnosticSignHint", {
	fg = "{{colors.secondary_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "DiagnosticSignOk", {
	fg = "{{colors.tertiary.default.hex}}",
})

-- Diagnostic virtual text (inline)
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", {
	fg = "{{colors.error.default.hex}}",
})

vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", {
	fg = "{{colors.tertiary.default.hex}}",
})

vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", {
	fg = "{{colors.secondary.default.hex}}",
})

vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", {
	fg = "{{colors.secondary_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "DiagnosticVirtualTextOk", {
	fg = "{{colors.tertiary.default.hex}}",
})

-- Underlines (soft undercurl, no harsh neon)
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", {
	undercurl = true,
	sp = "{{colors.error.default.hex}}",
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", {
	undercurl = true,
	sp = "{{colors.tertiary.default.hex}}",
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", {
	undercurl = true,
	sp = "{{colors.secondary.default.hex}}",
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", {
	undercurl = true,
	sp = "{{colors.secondary_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", {
	fg = "{{colors.secondary_container.default.hex}}",
})

-- Popup + Completion (Soft Bright)

-- Floating windows

vim.api.nvim_set_hl(0, "NormalFloat", {
	fg = "{{colors.primary_container.default.hex}}",
	bg = "{{colors.surface_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "FloatBorder", {
	fg = "{{colors.surface_variant.default.hex}}",
	bg = "{{colors.surface_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "FloatTitle", {
	fg = "{{colors.primary.default.hex}}",
})

-- Popup menu (completion)
vim.api.nvim_set_hl(0, "Pmenu", {
	fg = "{{colors.secondary.default.hex}}",
	bg = "{{colors.surface_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "PmenuSel", {
	fg = "{{colors.surface.default.hex}}",
	bg = "{{colors.primary.default.hex}}",
})

vim.api.nvim_set_hl(0, "PmenuSbar", {
	fg = "{{colors.surface_variant.default.hex}}",
	bg = "{{colors.surface_variant.default.hex}}",
})

vim.api.nvim_set_hl(0, "PmenuThumb", {
	fg = "{{colors.outline.default.hex}}",
	bg = "{{colors.outline.default.hex}}",
})

-- Completion item kinds (Cmp)
vim.api.nvim_set_hl(0, "CmpItemAbbr", {
	fg = "{{colors.on_surface.default.hex}}",
})

vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", {
	fg = "{{colors.surface_variant.default.hex}}",
	strikethrough = true,
})

vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", {
	fg = "{{colors.primary.default.hex}}",
})

vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", {
	fg = "{{colors.primary.default.hex}}",
})

vim.api.nvim_set_hl(0, "CmpItemKind", {
	fg = "{{colors.secondary.default.hex}}",
})

vim.api.nvim_set_hl(0, "CmpItemMenu", {
	fg = "{{colors.secondary_container.default.hex}}",
})

-- Documentation popup
vim.api.nvim_set_hl(0, "CmpDocumentation", {
	fg = "{{colors.on_surface.default.hex}}",
	bg = "{{colors.surface_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "CmpDocumentationBorder", {
	fg = "{{colors.surface_variant.default.hex}}",
	bg = "{{colors.surface_container.default.hex}}",
})

-- Terminal Colors (Soft Bright, Matugen‑adaptive)

vim.g.terminal_color_0 = "{{colors.surface.default.hex}}" -- black (soft)
vim.g.terminal_color_1 = "{{colors.error.default.hex}}" -- red
vim.g.terminal_color_2 = "{{colors.primary.default.hex}}" -- green-ish primary
vim.g.terminal_color_3 = "{{colors.tertiary.default.hex}}" -- yellow/amber
vim.g.terminal_color_4 = "{{colors.on_primary_container.default.hex}}" -- blue-ish
vim.g.terminal_color_5 = "{{colors.on_secondary_container.default.hex}}" -- magenta-ish
vim.g.terminal_color_6 = "{{colors.secondary.default.hex}}" -- cyan-ish
vim.g.terminal_color_7 = "{{colors.on_surface.default.hex}}" -- white (soft bright)

-- Bright variants
vim.g.terminal_color_8 = "{{colors.surface_bright.default.hex}}" -- bright black
vim.g.terminal_color_9 = "{{colors.error.default.hex}}" -- bright red
vim.g.terminal_color_10 = "{{colors.primary.default.hex}}" -- bright green-ish
vim.g.terminal_color_11 = "{{colors.tertiary.default.hex}}" -- bright yellow
vim.g.terminal_color_12 = "{{colors.on_primary_container.default.hex}}" -- bright blue
vim.g.terminal_color_13 = "{{colors.on_secondary_container.default.hex}}" -- bright magenta
vim.g.terminal_color_14 = "{{colors.secondary.default.hex}}" -- bright cyan
vim.g.terminal_color_15 = "{{colors.on_surface.default.hex}}" -- bright white

-- Final Fallbacks (Soft Bright)

-- Underlined text
vim.api.nvim_set_hl(0, "Underlined", {
	fg = "{{colors.primary.default.hex}}",
	underline = true,
})

-- VisualNOS (non-selectable visual mode)
vim.api.nvim_set_hl(0, "VisualNOS", {
	bg = "{{colors.surface_container.default.hex}}",
})

-- CursorIM (input method cursor)
vim.api.nvim_set_hl(0, "CursorIM", {
	bg = "{{colors.primary.default.hex}}",
})

-- WildMenu (command-line completion)
vim.api.nvim_set_hl(0, "WildMenu", {
	fg = "{{colors.surface.default.hex}}",
	bg = "{{colors.primary.default.hex}}",
})

-- Diff fallback groups
vim.api.nvim_set_hl(0, "diffAdded", {
	fg = "{{colors.tertiary.default.hex}}",
})

vim.api.nvim_set_hl(0, "diffChanged", {
	fg = "{{colors.secondary.default.hex}}",
})

vim.api.nvim_set_hl(0, "diffRemoved", {
	fg = "{{colors.error.default.hex}}",
})

vim.api.nvim_set_hl(0, "diffOldFile", {
	fg = "{{colors.secondary_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "diffNewFile", {
	fg = "{{colors.primary.default.hex}}",
})

vim.api.nvim_set_hl(0, "diffFile", {
	fg = "{{colors.outline.default.hex}}",
})

vim.api.nvim_set_hl(0, "diffLine", {
	fg = "{{colors.secondary_container.default.hex}}",
})

vim.api.nvim_set_hl(0, "diffIndexLine", {
	fg = "{{colors.tertiary_container.default.hex}}",
})

-- Health check groups (triggered on CmdlineEnter)
vim.api.nvim_create_autocmd("CmdlineEnter", {
	once = true,
	callback = function()
		vim.api.nvim_set_hl(0, "healthError", {
			fg = "{{colors.error.default.hex}}",
		})
		vim.api.nvim_set_hl(0, "healthSuccess", {
			fg = "{{colors.tertiary.default.hex}}",
		})
		vim.api.nvim_set_hl(0, "healthWarning", {
			fg = "{{colors.tertiary.default.hex}}",
		})
	end,
})
