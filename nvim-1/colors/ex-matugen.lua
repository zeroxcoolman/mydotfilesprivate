-- Core UI Groups (Soft Bright)

-- Main editor background + text
vim.api.nvim_set_hl(0, "Normal", {
	fg = "#3c4d0e",
	bg = "#1f2019",
})

vim.api.nvim_set_hl(0, "NormalNC", {
	fg = "#3c4d0e",
	bg = "#1f2019",
})

-- Cursor + cursorline
vim.api.nvim_set_hl(0, "Cursor", {
	bg = "#bacf83",
	fg = "#12140d",
})

vim.api.nvim_set_hl(0, "CursorLine", {
	bg = "#292b23",
})

vim.api.nvim_set_hl(0, "CursorLineNr", {
	fg = "#bacf83",
})

-- Line numbers
vim.api.nvim_set_hl(0, "LineNr", {
	fg = "#434931",
})

-- Columns, whitespace, end markers
vim.api.nvim_set_hl(0, "ColorColumn", {
	bg = "#292b23",
})

vim.api.nvim_set_hl(0, "Whitespace", {
	fg = "#45483c",
})

vim.api.nvim_set_hl(0, "EndOfBuffer", {
	fg = "#45483c",
})

-- Window separators
vim.api.nvim_set_hl(0, "VertSplit", {
	fg = "#45483c",
})

vim.api.nvim_set_hl(0, "WinSeparator", {
	fg = "#45483c",
})

-- Sign column
vim.api.nvim_set_hl(0, "SignColumn", {
	fg = "#434931",
})

-- Statusline

vim.api.nvim_set_hl(0, "StatusLine", {
	fg = "#3c4d0e",
	bg = "#1f2019",
})

vim.api.nvim_set_hl(0, "StatusLineNC", {
	fg = "#45483c",
	bg = "#45483c",
})

-- Tabs
vim.api.nvim_set_hl(0, "TabLine", {
	fg = "#434931",
	bg = "#1f2019",
})

vim.api.nvim_set_hl(0, "TabLineSel", {
	fg = "#1f2019",
	bg = "#bacf83",
})

vim.api.nvim_set_hl(0, "TabLineFill", {
	fg = "#3c4d0e",
	bg = "#1f2019",
})

-- Titles, messages, misc UI
vim.api.nvim_set_hl(0, "Title", {
	fg = "#bacf83",
})

vim.api.nvim_set_hl(0, "MsgArea", {
	fg = "#bacf83",
})

vim.api.nvim_set_hl(0, "ModeMsg", {
	fg = "#bacf83",
})

vim.api.nvim_set_hl(0, "MoreMsg", {
	fg = "#bacf83",
})

vim.api.nvim_set_hl(0, "WarningMsg", {
	fg = "#a1d0c7",
})

-- Visual selection
vim.api.nvim_set_hl(0, "Visual", {
	fg = "#12140d",
	bg = "#bacf83",
})

-- Matching parentheses
vim.api.nvim_set_hl(0, "MatchParen", {
	fg = "#12140d",
	bg = "#a1d0c7",
})

-- Non-text characters
vim.api.nvim_set_hl(0, "NonText", {
	fg = "#909284",
})

-- Syntax Groups (Soft Bright)

-- Comments: soft, readable, never too dark

-- Comments: soft, readable, never muddy
vim.api.nvim_set_hl(0, "@comment", {
	fg = "#434931",
})
vim.api.nvim_set_hl(0, "@comment.documentation", {
	fg = "#434931",
})
vim.api.nvim_set_hl(0, "@comment.note", {
	fg = "#c3caaa",
})
vim.api.nvim_set_hl(0, "@comment.todo", {
	fg = "#c3caaa",
})
vim.api.nvim_set_hl(0, "@comment.error", {
	fg = "#204e47",
})

-- Strings: warm, expressive, unified
vim.api.nvim_set_hl(0, "@string", {
	fg = "#a1d0c7",
})
vim.api.nvim_set_hl(0, "@string.escape", {
	fg = "#204e47",
})
vim.api.nvim_set_hl(0, "@string.regexp", {
	fg = "#204e47",
})
vim.api.nvim_set_hl(0, "@string.special", {
	fg = "#204e47",
})

-- Keywords: softened, readable
vim.api.nvim_set_hl(0, "@keyword", {
	fg = "#3c4d0e",
})
vim.api.nvim_set_hl(0, "@keyword.exception", {
	fg = "#434931",
})
vim.api.nvim_set_hl(0, "@keyword.return", {
	fg = "#434931",
})

-- Functions: unified with strings
vim.api.nvim_set_hl(0, "@function", {
	fg = "#a1d0c7",
})
vim.api.nvim_set_hl(0, "@function.builtin", {
	fg = "#434931",
})
vim.api.nvim_set_hl(0, "@function.call", {
	fg = "#c3caaa",
})
vim.api.nvim_set_hl(0, "@function.method", {
	fg = "#a1d0c7",
})
vim.api.nvim_set_hl(0, "@function.method.call", {
	fg = "#c3caaa",
})

-- Variables: neutral, readable
vim.api.nvim_set_hl(0, "@variable", {
	fg = "#e3e3d7",
})
vim.api.nvim_set_hl(0, "@variable.builtin", {
	fg = "#e3e3d7",
})
vim.api.nvim_set_hl(0, "@variable.member", {
	fg = "#3c4d0e",
})
vim.api.nvim_set_hl(0, "@variable.parameter", {
	fg = "#434931",
})

-- Constants + numbers
vim.api.nvim_set_hl(0, "@constant", {
	fg = "#3c4d0e",
})
vim.api.nvim_set_hl(0, "@constant.builtin", {
	fg = "#c3caaa",
})
vim.api.nvim_set_hl(0, "@number", {
	fg = "#c3caaa",
})

-- Operators + punctuation
vim.api.nvim_set_hl(0, "@operator", {
	fg = "#909284",
})
vim.api.nvim_set_hl(0, "@punctuation.bracket", {
	fg = "#909284",
})
vim.api.nvim_set_hl(0, "@punctuation.delimiter", {
	fg = "#909284",
})
vim.api.nvim_set_hl(0, "@punctuation.special", {
	fg = "#909284",
})

-- Types
vim.api.nvim_set_hl(0, "@type", {
	fg = "#3c4d0e",
})
vim.api.nvim_set_hl(0, "@type.builtin", {
	fg = "#3c4d0e",
})
vim.api.nvim_set_hl(0, "@type.definition", {
	fg = "#e3e3d7",
})

-- Tags (HTML, XML, JSX)
vim.api.nvim_set_hl(0, "@tag", {
	fg = "#909284",
})
vim.api.nvim_set_hl(0, "@tag.attribute", {
	fg = "#434931",
})
vim.api.nvim_set_hl(0, "@tag.builtin", {
	fg = "#909284",
})
vim.api.nvim_set_hl(0, "@tag.delimiter", {
	fg = "#909284",
})

-- Constructors
vim.api.nvim_set_hl(0, "@constructor", {
	fg = "#c3caaa",
})

-- Labels
vim.api.nvim_set_hl(0, "@label", {
	fg = "#909284",
})

-- Markup (Markdown, org-mode, etc.)
vim.api.nvim_set_hl(0, "@markup.heading", {
	fg = "#bacf83",
})
vim.api.nvim_set_hl(0, "@markup.italic", {
	fg = "#434931",
})
vim.api.nvim_set_hl(0, "@markup.strong", {
	fg = "#434931",
})
vim.api.nvim_set_hl(0, "@markup.quote", {
	fg = "#c3caaa",
})
vim.api.nvim_set_hl(0, "@markup.link", {
	fg = "#c3caaa",
})
vim.api.nvim_set_hl(0, "@markup.link.label", {
	fg = "#c3caaa",
})
vim.api.nvim_set_hl(0, "@markup.link.url", {
	fg = "#434931",
})
vim.api.nvim_set_hl(0, "@markup.list", {
	fg = "#434931",
})
vim.api.nvim_set_hl(0, "@markup.list.checked", {
	fg = "#a1d0c7",
})
vim.api.nvim_set_hl(0, "@markup.list.unchecked", {
	fg = "#ffb4ab",
})
vim.api.nvim_set_hl(0, "@markup.math", {
	fg = "#204e47",
})
vim.api.nvim_set_hl(0, "@markup.strikethrough", {
	fg = "#434931",
})

-- LSP + Treesitter (Soft Bright)

-- LSP Semantic Tokens
vim.api.nvim_set_hl(0, "@lsp.type.enumMember", {
	link = "@variable.member",
})

vim.api.nvim_set_hl(0, "LspCodeLens", {
	fg = "#434931",
})

vim.api.nvim_set_hl(0, "LspCodeLensSeparator", {
	fg = "#434931",
})

vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", {
	fg = "#bacf83",
})

-- Treesitter Structural UI
vim.api.nvim_set_hl(0, "TSNodeKey", {
	fg = "#bacf83",
})

vim.api.nvim_set_hl(0, "TSNodeUnmatched", {
	fg = "#434931",
})

-- Treesitter Markup (structural)
vim.api.nvim_set_hl(0, "@markup.heading", {
	fg = "#bacf83",
})

vim.api.nvim_set_hl(0, "@markup.italic", {
	fg = "#434931",
})

vim.api.nvim_set_hl(0, "@markup.strong", {
	fg = "#434931",
})

vim.api.nvim_set_hl(0, "@markup.quote", {
	fg = "#c3caaa",
})

vim.api.nvim_set_hl(0, "@markup.link", {
	fg = "#c3caaa",
})

vim.api.nvim_set_hl(0, "@markup.link.label", {
	fg = "#c3caaa",
})

vim.api.nvim_set_hl(0, "@markup.link.url", {
	fg = "#434931",
})

vim.api.nvim_set_hl(0, "@markup.list", {
	fg = "#434931",
})

vim.api.nvim_set_hl(0, "@markup.list.checked", {
	fg = "#a1d0c7",
})

vim.api.nvim_set_hl(0, "@markup.list.unchecked", {
	fg = "#ffb4ab",
})

vim.api.nvim_set_hl(0, "@markup.math", {
	fg = "#ffb4ab",
})

vim.api.nvim_set_hl(0, "@markup.strikethrough", {
	fg = "#434931",
})

-- Diff + Diagnostic (Soft Bright)

-- Diff colors (calm but expressive)
vim.api.nvim_set_hl(0, "DiffAdd", {
	fg = "#a1d0c7",
})

vim.api.nvim_set_hl(0, "DiffChange", {
	fg = "#c3caaa",
})

vim.api.nvim_set_hl(0, "DiffDelete", {
	fg = "#ffb4ab",
})

vim.api.nvim_set_hl(0, "DiffText", {
	fg = "#bacf83",
})

-- Git-style diff aliases
vim.api.nvim_set_hl(0, "Added", {
	fg = "#a1d0c7",
})

vim.api.nvim_set_hl(0, "Changed", {
	fg = "#c3caaa",
})

vim.api.nvim_set_hl(0, "Removed", {
	fg = "#ffb4ab",
})

-- Diagnostic text (soft, readable)

vim.api.nvim_set_hl(0, "DiagnosticError", {
	fg = "#ffdad6",
})

vim.api.nvim_set_hl(0, "DiagnosticWarn", {
	fg = "#a1d0c7",
})

vim.api.nvim_set_hl(0, "DiagnosticInfo", {
	fg = "#c3caaa",
})

vim.api.nvim_set_hl(0, "DiagnosticHint", {
	fg = "#434931",
})

vim.api.nvim_set_hl(0, "DiagnosticOk", {
	fg = "#a1d0c7",
})

-- Diagnostic signs (gutter)
vim.api.nvim_set_hl(0, "DiagnosticSignError", {
	fg = "#ffb4ab",
})

vim.api.nvim_set_hl(0, "DiagnosticSignWarn", {
	fg = "#a1d0c7",
})

vim.api.nvim_set_hl(0, "DiagnosticSignInfo", {
	fg = "#c3caaa",
})

vim.api.nvim_set_hl(0, "DiagnosticSignHint", {
	fg = "#434931",
})

vim.api.nvim_set_hl(0, "DiagnosticSignOk", {
	fg = "#a1d0c7",
})

-- Diagnostic virtual text (inline)
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", {
	fg = "#ffb4ab",
})

vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", {
	fg = "#a1d0c7",
})

vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", {
	fg = "#c3caaa",
})

vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", {
	fg = "#434931",
})

vim.api.nvim_set_hl(0, "DiagnosticVirtualTextOk", {
	fg = "#a1d0c7",
})

-- Underlines (soft undercurl, no harsh neon)
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", {
	undercurl = true,
	sp = "#ffb4ab",
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", {
	undercurl = true,
	sp = "#a1d0c7",
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", {
	undercurl = true,
	sp = "#c3caaa",
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", {
	undercurl = true,
	sp = "#434931",
})

vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", {
	fg = "#434931",
})

-- Popup + Completion (Soft Bright)

-- Floating windows

vim.api.nvim_set_hl(0, "NormalFloat", {
	fg = "#3c4d0e",
	bg = "#1f2019",
})

vim.api.nvim_set_hl(0, "FloatBorder", {
	fg = "#45483c",
	bg = "#1f2019",
})

vim.api.nvim_set_hl(0, "FloatTitle", {
	fg = "#bacf83",
})

-- Popup menu (completion)
vim.api.nvim_set_hl(0, "Pmenu", {
	fg = "#c3caaa",
	bg = "#1f2019",
})

vim.api.nvim_set_hl(0, "PmenuSel", {
	fg = "#12140d",
	bg = "#bacf83",
})

vim.api.nvim_set_hl(0, "PmenuSbar", {
	fg = "#45483c",
	bg = "#45483c",
})

vim.api.nvim_set_hl(0, "PmenuThumb", {
	fg = "#909284",
	bg = "#909284",
})

-- Completion item kinds (Cmp)
vim.api.nvim_set_hl(0, "CmpItemAbbr", {
	fg = "#e3e3d7",
})

vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", {
	fg = "#45483c",
	strikethrough = true,
})

vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", {
	fg = "#bacf83",
})

vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", {
	fg = "#bacf83",
})

vim.api.nvim_set_hl(0, "CmpItemKind", {
	fg = "#c3caaa",
})

vim.api.nvim_set_hl(0, "CmpItemMenu", {
	fg = "#434931",
})

-- Documentation popup
vim.api.nvim_set_hl(0, "CmpDocumentation", {
	fg = "#e3e3d7",
	bg = "#1f2019",
})

vim.api.nvim_set_hl(0, "CmpDocumentationBorder", {
	fg = "#45483c",
	bg = "#1f2019",
})

-- Terminal Colors (Soft Bright, Matugen‑adaptive)

vim.g.terminal_color_0 = "#12140d" -- black (soft)
vim.g.terminal_color_1 = "#ffb4ab" -- red
vim.g.terminal_color_2 = "#bacf83" -- green-ish primary
vim.g.terminal_color_3 = "#a1d0c7" -- yellow/amber
vim.g.terminal_color_4 = "#d6eb9c" -- blue-ish
vim.g.terminal_color_5 = "#dfe6c4" -- magenta-ish
vim.g.terminal_color_6 = "#c3caaa" -- cyan-ish
vim.g.terminal_color_7 = "#e3e3d7" -- white (soft bright)

-- Bright variants
vim.g.terminal_color_8 = "#383a32" -- bright black
vim.g.terminal_color_9 = "#ffb4ab" -- bright red
vim.g.terminal_color_10 = "#bacf83" -- bright green-ish
vim.g.terminal_color_11 = "#a1d0c7" -- bright yellow
vim.g.terminal_color_12 = "#d6eb9c" -- bright blue
vim.g.terminal_color_13 = "#dfe6c4" -- bright magenta
vim.g.terminal_color_14 = "#c3caaa" -- bright cyan
vim.g.terminal_color_15 = "#e3e3d7" -- bright white

-- Final Fallbacks (Soft Bright)

-- Underlined text
vim.api.nvim_set_hl(0, "Underlined", {
	fg = "#bacf83",
	underline = true,
})

-- VisualNOS (non-selectable visual mode)
vim.api.nvim_set_hl(0, "VisualNOS", {
	bg = "#1f2019",
})

-- CursorIM (input method cursor)
vim.api.nvim_set_hl(0, "CursorIM", {
	bg = "#bacf83",
})

-- WildMenu (command-line completion)
vim.api.nvim_set_hl(0, "WildMenu", {
	fg = "#12140d",
	bg = "#bacf83",
})

-- Diff fallback groups
vim.api.nvim_set_hl(0, "diffAdded", {
	fg = "#a1d0c7",
})

vim.api.nvim_set_hl(0, "diffChanged", {
	fg = "#c3caaa",
})

vim.api.nvim_set_hl(0, "diffRemoved", {
	fg = "#ffb4ab",
})

vim.api.nvim_set_hl(0, "diffOldFile", {
	fg = "#434931",
})

vim.api.nvim_set_hl(0, "diffNewFile", {
	fg = "#bacf83",
})

vim.api.nvim_set_hl(0, "diffFile", {
	fg = "#909284",
})

vim.api.nvim_set_hl(0, "diffLine", {
	fg = "#434931",
})

vim.api.nvim_set_hl(0, "diffIndexLine", {
	fg = "#204e47",
})

-- Health check groups (triggered on CmdlineEnter)
vim.api.nvim_create_autocmd("CmdlineEnter", {
	once = true,
	callback = function()
		vim.api.nvim_set_hl(0, "healthError", {
			fg = "#ffb4ab",
		})
		vim.api.nvim_set_hl(0, "healthSuccess", {
			fg = "#a1d0c7",
		})
		vim.api.nvim_set_hl(0, "healthWarning", {
			fg = "#a1d0c7",
		})
	end,
})
