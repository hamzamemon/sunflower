local c = require("sunflower.colors")

local hl = vim.api.nvim_set_hl
local theme = {}

theme.set_highlights = function()
    -- Editor
    hl(0, "Normal", {fg = c.fg, bg = c.bg}) -- normal text
    hl(0, "SignColumn", {fg = c.fg, bg = c.bg}) -- column where signs are displayed
    hl(0, "CursorLineSign", {link = 'SignColumn'})
    hl(0, "MsgArea", {fg = c.fg, bg = c.bg}) -- area for messages and cmdline
    hl(0, "ModeMsg", {fg = c.fg, bg = c.alt_bg}) -- 'showmode' message (e.g., "-- INSERT --")
    hl(0, "MsgSeparator", {link = 'StatusLine'}) -- separator for scrolled messages, msgsep flag of 'display'
    hl(0, "SpellBad", {fg = "NONE", bg = "NONE", sp = c.red, undercurl = true}) -- word that is not recognized by the spellchecker. 'spell'
    hl(0, "SpellCap",
       {fg = "NONE", bg = "NONE", sp = c.yellow, undercurl = true}) -- word that should start with a capital. 'spell'
    hl(0, "SpellLocal",
       {fg = "NONE", bg = "NONE", sp = c.green, underline = true}) -- word that is recognized by the spellchecker as one that is used in another region. 'spell'
    hl(0, "SpellRare",
       {fg = "NONE", bg = "NONE", sp = c.purple, underline = true}) -- word that is recognized by the spellchecker as one that is hardly ever used. 'spell'
    hl(0, "NormalNC", {fg = c.fg, bg = c.bg}) -- normal text in non-current windows
    hl(0, "Pmenu", {fg = c.darkblue, bg = c.purple}) -- popup menu: normal item
    hl(0, "PmenuSel", {fg = c.purple, bg = c.darkblue}) -- popup menu: selected item
    hl(0, "WildMenu", {fg = c.orange, bold = true}) -- current match in 'wildmenu' completion
    hl(0, "CursorLineNr", {fg = c.purple, bg = "NONE", bold = true}) -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line
    hl(0, "Folded", {fg = c.gray, bg = c.alt_bg, italic = true}) -- line used for closed folds
    hl(0, "FoldColumn", {fg = c.gray, bg = c.alt_bg}) -- 'foldcolumn'
    -- hl(0, "CursorLineFold", {link = 'FoldColumn'})
    hl(0, "LineNr", {fg = c.gray, bg = "NONE"}) -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set
    hl(0, "LineNrAbove", {link = 'LineNr'})
    hl(0, "LineNrBelow", {link = 'LineNr'})
    hl(0, "FloatBorder", {fg = c.gray, bg = c.alt_bg})
    hl(0, "FloatShadow", {fg = 'NONE', bg = c.black, blend = 80})
    hl(0, "FloatShadowThrough", {fg = 'NONE', bg = c.black, blend = 100})
    hl(0, "Whitespace", {link = 'NonText'}) -- "nbsp", "space", "tab" and "trail" in 'listchars'
    hl(0, "VertSplit", {link = 'Normal'}) -- the column separating vertically split windows
    hl(0, "WinSeparator", {link = 'VertSplit'})
    hl(0, "WinBar", {fg = c.fg, bg = c.bg, bold = true})
    hl(0, "WinBarNC", {link = 'WinBar'})
    hl(0, "CursorLine", {fg = "NONE", bg = c.alt_bg}) -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set
    hl(0, "CursorColumn", {fg = "NONE", bg = c.alt_bg}) -- Screen-column at the cursor, when 'cursorcolumn' is set
    hl(0, "ColorColumn", {fg = "NONE", bg = c.alt_bg}) --  used for the columns set with 'colorcolumn'
    hl(0, "NormalFloat", {fg = c.fg, bg = c.alt_bg}) -- normal text in floating windows
    hl(0, "Visual", {fg = "NONE", bg = c.dark_gray}) -- visual mode selection
    hl(0, "VisualNC", {link = 'Visual'})
    -- hl(0, "VisualNOS", {fg = "NONE", bg = c.dark_gray}) -- visual mode selection when Vim is "Not Owning the Selection"
    hl(0, "WarningMsg", {fg = c.warn, bg = "NONE"}) -- warning messages
    hl(0, "DiffText", {fg = c.orange, bg = c.sign_delete}) -- diff mode: Changed text within a changed line
    hl(0, "DiffAdd", {fg = c.green, bg = c.sign_add}) -- diff mode: Added line
    hl(0, "DiffChange", {fg = c.yellow, bg = c.sign_change, underline = true}) --  diff mode: Changed line
    hl(0, "DiffDelete", {fg = c.red, bg = c.sign_delete}) -- diff mode: Deleted line
    hl(0, "QuickFixLine", {fg = c.purple, bg = c.ui2_blue, reverse = true}) -- current 'quickfix' item in the quickfix window. Combined with 'hl-CursorLine' when the cursor is there
    hl(0, "PmenuSbar", {fg = "NONE", bg = c.alt_bg}) -- popup menu: scrollbar
    hl(0, "PmenuThumb", {fg = c.fg, bg = c.gray}) -- popup menu: thumb of the scrollbar
    hl(0, "MatchWord", {link = 'MatchParen'})
    hl(0, "MatchParen", {fg = c.hint, bg = "NONE", underline = true})
    -- hl(0, "MatchWordCur", {fg = "NONE", bg = "NONE", underline = true})
    hl(0, "MatchParenCur", {link = 'MatchParen'})
    hl(0, "Cursor", {fg = c.cursor_fg, bg = c.cursor_bg}) -- character under the cursor
    hl(0, "lCursor", {fg = c.cursor_fg, bg = c.cursor_bg}) -- the character under the cursor when language-mapping is used (see 'guicursor')
    -- hl(0, "CursorIM", {fg = c.cursor_fg, bg = c.cursor_bg}) -- like Cursor, but used when in IME mode
    hl(0, "TermCursor", {fg = c.cursor_fg, bg = c.cursor_bg}) -- cursor in a focused terminal
    hl(0, "TermCursorNC", {fg = c.cursor_fg, bg = c.cursor_bg}) -- cursor in an unfocused terminal
    hl(0, "Conceal", {fg = c.gray, bg = "NONE"}) -- placeholder characters substituted for concealed text (see 'conceallevel')
    hl(0, "Directory", {fg = c.folder_blue, bg = "NONE"}) -- directory names (and other special names in listings)
    hl(0, "SpecialKey", {fg = c.blue, bg = "NONE", bold = true}) -- unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. 'hl-Whitespace'
    hl(0, "ErrorMsg", {fg = c.error, bg = c.bg, bold = true}) -- error messages on the command line
    hl(0, "Search", {fg = "NONE", bg = c.ui5_blue, reverse = true}) -- last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out
    hl(0, "CurSearch", {link = 'Search'})
    hl(0, "IncSearch", {fg = "NONE", bg = c.ui2_orange}) -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    hl(0, "Substitute", {fg = "NONE", bg = c.ui2_orange}) -- :substitute replacement text highlighting
    hl(0, "MoreMsg", {fg = c.orange, bg = "NONE"}) -- 'more-prompt'
    hl(0, "Question", {fg = c.orange, bg = "NONE"}) -- 'hit-efnter' prompt and yes/no questions
    hl(0, "EndOfBuffer", {link = 'NonText'}) -- filler lines (~) after the end of the buffer
    hl(0, "NonText", {fg = c.bg, bg = "NONE"}) -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line)
    hl(0, "TabLine", {fg = c.light_gray, bg = c.line}) -- tab pages line, not active tab page label
    hl(0, "TabLineSel", {fg = c.fg, bg = c.line}) -- tab pages line, active tab page label
    hl(0, "TabLineFill", {fg = c.line, bg = c.line}) -- tab pages line, where there are no labels
    hl(0, "RedrawDebugNormal", {fg = 'NONE', bg = 'NONE', reverse = true})
    hl(0, "RedrawDebugClear", {fg = 'NONE', bg = c.yellow})
    hl(0, "RedrawDebugComposed", {fg = 'NONE', bg = c.green})
    hl(0, "RedrawDebugRecompose", {fg = 'NONE', bg = c.red})
    -- hl(0, "MatchBackground", {link = 'ColorColumn'})
    -- ToolbarLine = {fg = c.fg, bg = c.bg},
    -- ToolbarButton = {fg = c.fg, style = 'bold'},
    -- NormalMode = {fg = c.blue, style = 'reverse'},
    -- InsertMode = {fg = c.green, style = 'reverse'},
    -- ReplacelMode = {fg = c.red, style = 'reverse'},
    -- VisualMode = {fg = c.yellow, style = 'reverse'},
    -- CommandMode = {fg = c.gray, style = 'reverse'},
    -- Warnings = {fg = c.yellow},
    -- healthError = {fg = c.error},
    -- healthWarning = {fg = c.yellow},
    -- healthSuccess = {fg = c.green}

    -- Neovim
    hl(0, "NvimInternalError", {fg = c.red, bg = c.red})
    hl(0, "NvimAssignment", {link = 'Operator'})
    hl(0, "NvimPlainAssignment", {link = 'NvimAssignment'})
    hl(0, "NvimAugmentedAssignment", {link = 'NvimAssignment'})
    hl(0, "NvimAssignmentWithAddition", {link = 'NvimAugmentedAssignment'})
    hl(0, "NvimAssignmentWithSubtraction", {link = 'NvimAugmentedAssignment'})
    hl(0, "NvimAssignmentWithConcatenation", {link = 'NvimAugmentedAssignment'})
    hl(0, "NvimOperator", {link = 'Operator'})
    hl(0, "NvimUnaryOperator", {link = 'Operator'})
    hl(0, "NvimUnaryPlus", {link = 'Operator'})
    hl(0, "NvimUnaryMinus", {link = 'Operator'})
    hl(0, "NvimNot", {link = 'Operator'})
    hl(0, "NvimBinaryOperator", {link = 'Operator'})
    hl(0, "NvimComparison", {link = 'Operator'})
    hl(0, "NvimComparisonModifier", {link = 'NvimComparison'})
    hl(0, "NvimBinaryPlus", {link = 'NvimBinaryOperator'})
    hl(0, "NvimBinaryMinus", {link = 'NvimBinaryOperator'})
    hl(0, "NvimConcat", {link = 'NvimBinaryOperator'})
    hl(0, "NvimConcatOrSubscript", {link = 'NvimConcat'})
    hl(0, "NvimOr", {link = 'NvimBinaryOperator'})
    hl(0, "NvimAnd", {link = 'NvimBinaryOperator'})
    hl(0, "NvimMultiplication", {link = 'NvimBinaryOperator'})
    hl(0, "NvimDivision", {link = 'NvimBinaryOperator'})
    hl(0, "NvimMod", {link = 'NvimBinaryOperator'})
    hl(0, "NvimTernary", {link = 'Operator'})
    hl(0, "NvimTernaryColon", {link = 'NvimTernary'})
    hl(0, "NvimParenthesis", {link = 'Delimiter'})
    hl(0, "NvimLambda", {link = 'NvimParenthesis'})
    hl(0, "NvimNestingParenthesis", {link = 'NvimParenthesis'})
    hl(0, "NvimCallingParenthesis", {link = 'NvimParenthesis'})
    hl(0, "NvimSubscript", {link = 'NvimParenthesis'})
    hl(0, "NvimSubscriptBracket", {link = 'NvimSubscript'})
    hl(0, "NvimSubscriptColon", {link = 'NvimSubscript'})
    hl(0, "NvimContainer", {link = 'NvimParenthesis'})
    hl(0, "NvimDict", {link = 'NvimContainer'})
    hl(0, "NvimList", {link = 'NvimContainer'})
    hl(0, "NvimIdentifier", {link = 'Identifier'})
    hl(0, "NvimIdentifierScope", {link = 'NvimIdentifier'})
    hl(0, "NvimIdentifierScopeDelimiter", {link = 'NvimIdentifier'})
    hl(0, "NvimIdentifierName", {link = 'NvimIdentifier'})
    hl(0, "NvimIdentifierKey", {link = 'NvimIdentifier'})
    hl(0, "NvimColon", {link = 'Delimiter'})
    hl(0, "NvimComma", {link = 'Delimiter'})
    hl(0, "NvimArrow", {link = 'Delimiter'})
    hl(0, "NvimRegister", {link = 'SpecialChar'})
    hl(0, "NvimNumber", {link = 'Number'})
    hl(0, "NvimFloat", {link = 'NvimNumber'})
    hl(0, "NvimNumberPrefix", {link = 'Type'})
    hl(0, "NvimOptionSigil", {link = 'Type'})
    hl(0, "NvimOptionName", {link = 'NvimIdentifier'})
    hl(0, "NvimOptionScope", {link = 'NvimIdentifierScope'})
    hl(0, "NvimOptionScopeDelimiter", {link = 'NvimIdentifierScopeDelimiter'})
    hl(0, "NvimEnvironmentSigil", {link = 'NvimOptionSigil'})
    hl(0, "NvimEnvironmentName", {link = 'NvimIdentifier'})
    hl(0, "NvimString", {link = 'String'})
    hl(0, "NvimStringBody", {link = 'NvimString'})
    hl(0, "NvimStringQuote", {link = 'NvimString'})
    hl(0, "NvimStringSpecial", {link = 'SpecialChar'})
    hl(0, "NvimSingleQuote", {link = 'NvimStringQuote'})
    hl(0, "NvimSingleQuotedBody", {link = 'NvimStringBody'})
    hl(0, "NvimSingleQuotedQuote", {link = 'NvimStringSpecial'})
    hl(0, "NvimDoubleQuote", {link = 'NvimStringQuote'})
    hl(0, "NvimDoubleQuotedBody", {link = 'NvimStringBody'})
    hl(0, "NvimDoubleQuotedEscape", {link = 'NvimStringSpecial'})
    hl(0, "NvimFigureBrace", {link = 'NvimInternalError'})
    hl(0, "NvimSingleQuotedUnknownEscape", {link = 'NvimInternalError'})
    hl(0, "NvimSpacing", {link = 'Normal'})
    hl(0, "NvimInvalidSingleQuotedUnknownEscape", {link = 'NvimInternalError'})
    hl(0, "NvimInvalid", {link = 'Error'})
    hl(0, "NvimInvalidAssignment", {link = 'NvimInvalid'})
    hl(0, "NvimInvalidPlainAssignment", {link = 'NvimInvalidAssignment'})
    hl(0, "NvimInvalidAugmentedAssignment", {link = 'NvimInvalidAssignment'})
    hl(0, "NvimInvalidAssignmentWithAddition",
       {link = 'NvimInvalidAugmentedAssignment'})
    hl(0, "NvimInvalidAssignmentWithSubtraction",
       {link = 'NvimInvalidAugmentedAssignment'})
    hl(0, "NvimInvalidAssignmentWithConcatenation",
       {link = 'NvimInvalidAugmentedAssignment'})
    hl(0, "NvimInvalidOperator", {link = 'NvimInvalid'})
    hl(0, "NvimInvalidUnaryOperator", {link = 'NvimInvalidOperator'})
    hl(0, "NvimInvalidUnaryPlus", {link = 'NvimInvalidUnaryOperator'})
    hl(0, "NvimInvalidUnaryMinus", {link = 'NvimInvalidUnaryOperator'})
    hl(0, "NvimInvalidNot", {link = 'NvimInvalidUnaryOperator'})
    hl(0, "NvimInvalidBinaryOperator", {link = 'NvimInvalidOperator'})
    hl(0, "NvimInvalidComparison", {link = 'NvimInvalidBinaryOperator'})
    hl(0, "NvimInvalidComparisonModifier", {link = 'NvimInvalidComparison'})
    hl(0, "NvimInvalidBinaryPlus", {link = 'NvimInvalidBinaryOperator'})
    hl(0, "NvimInvalidBinaryMinus", {link = 'NvimInvalidBinaryOperator'})
    hl(0, "NvimInvalidConcat", {link = 'NvimInvalidBinaryOperator'})
    hl(0, "NvimInvalidConcatOrSubscript", {link = 'NvimInvalidConcat'})
    hl(0, "NvimInvalidOr", {link = 'NvimInvalidBinaryOperator'})
    hl(0, "NvimInvalidAnd", {link = 'NvimInvalidBinaryOperator'})
    hl(0, "NvimInvalidMultiplication", {link = 'NvimInvalidBinaryOperator'})
    hl(0, "NvimInvalidDivision", {link = 'NvimInvalidBinaryOperator'})
    hl(0, "NvimInvalidMod", {link = 'NvimInvalidBinaryOperator'})
    hl(0, "NvimInvalidTernary", {link = 'NvimInvalidOperator'})
    hl(0, "NvimInvalidTernaryColon", {link = 'NvimInvalidTernary'})
    hl(0, "NvimInvalidDelimiter", {link = 'NvimInvalid'})
    hl(0, "NvimInvalidParenthesis", {link = 'NvimInvalidDelimiter'})
    hl(0, "NvimInvalidLambda", {link = 'NvimInvalidParenthesis'})
    hl(0, "NvimInvalidNestingParenthesis", {link = 'NvimInvalidParenthesis'})
    hl(0, "NvimInvalidCallingParenthesis", {link = 'NvimInvalidParenthesis'})
    hl(0, "NvimInvalidSubscript", {link = 'NvimInvalidParenthesis'})
    hl(0, "NvimInvalidSubscriptBracket", {link = 'NvimInvalidSubscript'})
    hl(0, "NvimInvalidSubscriptColon", {link = 'NvimInvalidSubscript'})
    hl(0, "NvimInvalidCurly", {link = 'NvimInvalidSubscript'})
    hl(0, "NvimInvalidContainer", {link = 'NvimInvalidParenthesis'})
    hl(0, "NvimInvalidDict", {link = 'NvimInvalidContainer'})
    hl(0, "NvimInvalidList", {link = 'NvimInvalidContainer'})
    hl(0, "NvimInvalidValue", {link = 'NvimInvalid'})
    hl(0, "NvimInvalidIdentifier", {link = 'NvimInvalidValue'})
    hl(0, "NvimInvalidIdentifierScope", {link = 'NvimInvalidIdentifier'})
    hl(0, "NvimInvalidIdentifierScopeDelimiter",
       {link = 'NvimInvalidIdentifier'})
    hl(0, "NvimInvalidIdentifierName", {link = 'NvimInvalidIdentifier'})
    hl(0, "NvimInvalidIdentifierKey", {link = 'NvimInvalidIdentifier'})
    hl(0, "NvimInvalidColon", {link = 'NvimInvalidDelimiter'})
    hl(0, "NvimInvalidComma", {link = 'NvimInvalidDelimiter'})
    hl(0, "NvimInvalidArrow", {link = 'NvimInvalidDelimiter'})
    hl(0, "NvimInvalidRegister", {link = 'NvimInvalidValue'})
    hl(0, "NvimInvalidNumber", {link = 'NvimInvalidValue'})
    hl(0, "NvimInvalidFloat", {link = 'NvimInvalidNumber'})
    hl(0, "NvimInvalidNumberPrefix", {link = 'NvimInvalidNumber'})
    hl(0, "NvimInvalidOptionSigil", {link = 'NvimInvalidIdentifier'})
    hl(0, "NvimInvalidOptionName", {link = 'NvimInvalidIdentifier'})
    hl(0, "NvimInvalidOptionScope", {link = 'NvimInvalidIdentifierScope'})
    hl(0, "NvimInvalidOptionScopeDelimiter",
       {link = 'NvimInvalidIdentifierScopeDelimiter'})
    hl(0, "NvimInvalidEnvironmentSigil", {link = 'NvimInvalidOptionSigil'})
    hl(0, "NvimInvalidEnvironmentName", {link = 'NvimInvalidIdentifier'})
    hl(0, "NvimInvalidString", {link = 'NvimInvalidValue'})
    hl(0, "NvimInvalidStringBody", {link = 'NvimStringBody'})
    hl(0, "NvimInvalidStringQuote", {link = 'NvimInvalidString'})
    hl(0, "NvimInvalidStringSpecial", {link = 'NvimStringSpecial'})
    hl(0, "NvimInvalidSingleQuote", {link = 'NvimInvalidStringQuote'})
    hl(0, "NvimInvalidSingleQuotedBody", {link = 'NvimInvalidStringBody'})
    hl(0, "NvimInvalidSingleQuotedQuote", {link = 'NvimInvalidStringSpecial'})
    hl(0, "NvimInvalidDoubleQuote", {link = 'NvimInvalidStringQuote'})
    hl(0, "NvimInvalidDoubleQuotedBody", {link = 'NvimInvalidStringBody'})
    hl(0, "NvimInvalidDoubleQuotedEscape", {link = 'NvimInvalidStringSpecial'})
    hl(0, "NvimInvalidDoubleQuotedUnknownEscape", {link = 'NvimInvalidValue'})
    hl(0, "NvimInvalidFigureBrace", {link = 'NvimInvalidDelimiter'})
    hl(0, "NvimInvalidSpacing", {link = 'ErrorMsg'})
    hl(0, "NvimDoubleQuotedUnknownEscape", {link = 'NvimInvalidValue'})

    -- Code
    hl(0, "Boolean", {fg = c.orange, bg = "NONE"}) -- Boolean literals: `True` and `False` in Python.
    hl(0, "Character", {fg = c.orange, bg = "NONE", bold = true}) -- Character literals: `'a'` in C.
    hl(0, "SpecialChar", {fg = c.pink, bg = "NONE"}) -- Special characters.
    hl(0, "Comment", {fg = c.green, bg = "NONE", italic = true}) -- Line comments and block comments.
    hl(0, "Conditional", {fg = c.orange, bg = "NONE", bold = true}) -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    hl(0, "Constant", {fg = c.green, bg = "NONE", bold = true}) -- -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    hl(0, "Debug", {fg = c.red, bg = "NONE"}) -- Debugging statements.
    hl(0, "Define", {fg = c.pink, bg = "NONE"}) -- Preprocessor #define statements.
    hl(0, "Error", {fg = c.error, bg = "NONE", bold = true}) -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    hl(0, "Exception", {fg = c.cyan, bg = "NONE"}) -- Exception related keywords: `try`, `except`, `finally` in Python.
    hl(0, "Float", {fg = c.blue, bg = "NONE"}) -- Floating-point number literals.
    hl(0, "Function", {link = 'Identifier'}) -- Function definitions.
    hl(0, "Method", {link = "Function"})
    hl(0, "Include", {link = 'PreProc'}) -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    hl(0, "Keyword", {fg = c.orange, bg = "#312c37", bold = true}) -- Keywords that don't fit into other categories.
    hl(0, "Label", {fg = c.cyan, bg = "NONE"}) -- GOTO labels: `label:` in C, and `::label::` in Lua.
    hl(0, "Number", {fg = c.purple, bg = "NONE"}) -- Numeric literals that don't fit into other categories.
    hl(0, "Operator", {fg = c.cyan, bg = "NONE"}) -- Binary or unary operators: `+`, and also `->` and `*` in C.
    hl(0, "PreProc", {fg = c.orange, bg = "NONE", bold = true}) -- Preprocessor #if, #else, #endif, etc.
    hl(0, "Repeat", {fg = c.orange, bg = "NONE", bold = true}) -- Keywords related to loops: `for`, `while`, etc.
    hl(0, "StorageClass", {fg = c.cyan, bg = "NONE"}) -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
    hl(0, "String", {fg = c.purple, bg = "NONE"}) -- String literals.
    hl(0, "Tag", {fg = c.red, bg = "NONE"}) -- Tags like HTML tag names.
    -- hl(0, "Bold", {fg = "NONE", bg = "NONE", bold = true}) -- Text to be represented in bold.
    -- hl(0, "Italic", {fg = "NONE", bg = "NONE", italic = true}) -- Text to be represented with emphasis.
    hl(0, "Underlined", {fg = "NONE", bg = "NONE", underline = true}) -- Text to be represented with an underline.
    hl(0, "Title", {fg = c.green, bg = "NONE", bold = true}) -- Text that is part of a title.
    hl(0, "Todo", {fg = c.magenta, bg = "NONE", bold = true}) -- Anything that needs extra attention, such as keywords like TODO or FIXME.
    hl(0, "Type", {fg = c.yellow, bg = "#342532", bold = true}) -- Type (and class) definitions and annotations.
    hl(0, "Typedef", {fg = c.red, bg = "NONE"}) -- Type definitions, e.g. `typedef` in C.
    -- hl(0, "Variable", {fg = c.yellow, bg = "NONE"}) -- Variable names that don't fit into other categories.
    hl(0, "Structure", {fg = c.purple, bg = "NONE", bold = true}) -- struct, union, enum, etc.
    hl(0, "Struct", {link = 'Structure'})
    hl(0, "Macro", {link = 'Define'}) -- same as Define
    hl(0, "Delimiter", {fg = c.cyan, bg = "NONE"}) -- character that needs attention like , or .
    hl(0, "SpecialComment", {fg = c.gray, bg = "NONE"}) -- special things inside a comment
    hl(0, "Ignore", {fg = c.magenta, bg = "NONE", bold = true}) -- left blank, hidden
    hl(0, "Statement", {fg = c.pink, bg = "NONE"}) -- any statement
    hl(0, "Identifier", {fg = c.yellow, bg = "NONE", bold = true}) -- any variable name
    hl(0, "PreCondit", {fg = c.cyan, bg = "NONE"}) -- preprocessor #if, #else, #endif, etc.
    hl(0, "Special", {fg = c.orange, bg = "NONE"}) -- any special symbol

    -- Treesitter
    hl(0, "TSAnnotation", {link = "PreProc"}) -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    hl(0, "TSAttribute", {link = "Variable"}) -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    hl(0, "TSBoolean", {link = "Boolean"})
    hl(0, "TSCharacter", {link = "Character"})
    hl(0, "TSCharacterSpecial", {link = "SpecialChar"})
    hl(0, "TSComment", {link = "Comment"})
    hl(0, "TSConditional", {link = "Conditional"})
    hl(0, "TSConstant", {link = "Constant"})
    hl(0, "TSConstBuiltin", {link = "Constant"}) -- Built-in constant values: `nil` in Lua.
    hl(0, "TSConstMacro", {link = "Constant"}) -- Constants defined by macros: `NULL` in C.
    hl(0, "TSConstructor", {link = "Type"}) -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    hl(0, "TSDebug", {link = "Debug"})
    hl(0, "TSDefine", {link = "Define"})
    hl(0, "TSError", {link = "Error"})
    hl(0, "TSException", {link = "Exception"})
    hl(0, "TSField", {link = "Identifier"}) -- Object and struct fields.
    hl(0, "TSFloat", {link = "Float"})
    hl(0, "TSFunction", {link = "Function"})
    hl(0, "TSFunctionCall", {link = "Function"}) -- Function calls.
    hl(0, "TSFuncBuiltin", {link = "Function"}) -- Built-in functions: `print` in Lua.
    hl(0, "TSFuncMacro", {link = "Function"}) -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    hl(0, "TSInclude", {link = "Include"})
    hl(0, "TSKeyword", {link = "Keyword"})
    hl(0, "TSKeywordFunction", {fg = c.green, bg = "NONE"}) -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    hl(0, "TSKeywordOperator", {link = "Keyword"}) -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    hl(0, "TSKeywordReturn", {fg = c.yellow, bg = "NONE"}) -- Keywords like `return` and `yield`.
    hl(0, "TSLabel", {link = "Label"})
    hl(0, "TSMethod", {link = "Function"}) -- Method definitions.
    hl(0, "TSMethodCall", {link = "Function"}) -- Method calls.
    hl(0, "TSNamespace", {link = 'Include'}) -- Identifiers referring to modules and namespaces.
    hl(0, "TSNone", {}) -- No highlighting (sets all highlight arguments to `NONE`). This group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    hl(0, "TSNumber", {link = "Number"})
    hl(0, "TSOperator", {link = "Operator"})
    hl(0, "TSParameter", {link = "Variable"}) -- Parameters of a function.
    hl(0, "TSParameterReference", {link = "Variable"}) -- References to parameters of a function.
    hl(0, "TSPreProc", {link = "PreProc"})
    hl(0, "TSProperty", {link = 'TSField'}) -- Same as `TSField`.
    hl(0, "TSPunctDelimiter", {link = "Delimiter"}) -- Punctuation delimiters: Periods, commas, semicolons, etc.
    hl(0, "TSPunctBracket", {link = "Delimiter"}) -- Brackets, braces, parentheses, etc.
    hl(0, "TSPunctSpecial", {link = "Delimiter"}) -- Special punctuation that doesn't fit into the previous categories.
    hl(0, "TSRepeat", {link = "Repeat"})
    hl(0, "TSStorageClass", {link = "StorageClass"})
    hl(0, "TSString", {link = "String"})
    hl(0, "TSStringRegex", {link = "String"}) -- Regular expression literals.
    hl(0, "TSStringEscape", {link = "SpecialChar"}) -- Escape characters within a string: `\n`, `\t`, etc.
    hl(0, "TSStringSpecial", {link = "SpecialChar"}) -- Strings with special meaning that don't fit into the previous categories.
    hl(0, "TSSymbol", {link = 'Identifier'}) -- Identifiers referring to symbols or atoms.
    hl(0, "TSTag", {link = "Tag"})
    hl(0, "TSTagAttribute", {fg = c.yellow, bg = "NONE", italic = true}) -- HTML tag attributes.
    hl(0, "TSTagDelimiter", {link = 'Delimiter'}) -- Tag delimiters like `<` `>` `/`.
    hl(0, "TSText", {fg = c.alt_fg, bg = "NONE"}) -- Non-structured text. Like text in a markup language.
    hl(0, "TSStrong", {link = "Bold"})
    hl(0, "TSEmphasis", {link = "Italic"})
    hl(0, "TSUnderline", {link = "Underlined"})
    hl(0, "TSStrike", {fg = "NONE", bg = "NONE", strikethrough = true}) -- Strikethrough text.
    hl(0, "TSTitle", {link = "Title"})
    hl(0, "TSLiteral", {link = 'String'}) -- Literal or verbatim text.
    hl(0, "TSURI", {fg = c.cyan, bg = "NONE", underline = true}) -- URIs like hyperlinks or email addresses.
    hl(0, "TSMath", {fg = c.yellow, bg = "NONE"}) -- Math environments like LaTeX's `$ ... $`.
    hl(0, "TSTextReference", {fg = c.yellow}) -- Footnotes, text references, citations, etc.
    hl(0, "TSEnvironment", {fg = c.cyan, bg = 'NONE'}) -- Text environments of markup languages.
    hl(0, "TSEnvironmentName", {fg = c.orange, bg = "NONE"}) -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    hl(0, "TSNote", {link = "SpecialComment"}) -- Text representation of an informational note.
    hl(0, "TSWarning", {link = "WarningMsg"}) -- Text representation of a warning note.
    hl(0, "TSDanger", {link = "Error"}) -- Text representation of a danger note.
    hl(0, "TSTodo", {link = "Todo"})
    hl(0, "TSType", {link = "Type"})
    hl(0, "TSTypeBuiltin", {fg = c.orange, bg = "NONE"}) -- Built-in types: `i32` in Rust.
    hl(0, "TSTypeQualifier", {fg = c.orange, bg = "NONE"}) -- Qualifiers on types, e.g. `const` or `volatile` in C or `mut` in Rust.
    hl(0, "TSTypeDefinition", {link = "Typedef"})
    hl(0, "TSVariable", {link = "Variable"})
    hl(0, "TSVariableBuiltin", {link = 'Special'}) -- Variable names defined by the language: `this` or `self` in Javascript.
    hl(0, "TreesitterContext", {link = 'NormalFloat'})
    hl(0, "TreesitterContextLineNumber", {link = 'LineNr'})
    hl(0, "TSDefinitionUsage", {link = 'Visual'})
    hl(0, "TSDefinition", {link = 'Search'})
    hl(0, "TSCurrentScope", {link = 'CursorLine'})
    hl(0, "TSQueryLinterError", {link = 'Error'})
    hl(0, "TSPlaygroundLang", {link = 'String'})
    hl(0, "TSPlaygroundFocus", {link = 'Visual'})

    -- markdown
    -- hl(0, "markdownBlockquote", {fg = c.orange, bg = "NONE"})
    -- hl(0, "markdownCode", {fg = c.orange, bg = "NONE"})
    -- hl(0, "markdownCodeBlock", {fg = c.orange, bg = "NONE"})
    -- hl(0, "markdownCodeDelimiter", {fg = c.orange, bg = "NONE"})
    -- hl(0, "markdownH1", {link = "Title"})
    -- hl(0, "markdownH2", {link = "Title"})
    -- hl(0, "markdownH3", {link = "Title"})
    -- hl(0, "markdownH4", {link = "Title"})
    -- hl(0, "markdownH5", {link = "Title"})
    -- hl(0, "markdownH6", {link = "Title"})
    -- hl(0, "markdownHeadingDelimiter", {fg = c.blue, bg = "NONE"})
    -- hl(0, "markdownHeadingRule", {fg = c.fg, bg = "NONE", bold = true})
    -- hl(0, "markdownId", {link = "Identifier"})
    -- hl(0, "markdownIdDeclaration", {fg = c.blue, bg = "NONE"})
    -- hl(0, "markdownIdDelimiter", {fg = c.light_gray, bg = "NONE"})
    -- hl(0, "markdownLinkDelimiter", {fg = c.light_gray, bg = "NONE"})
    -- hl(0, "markdownBold", {fg = c.blue, bg = "NONE", bold = true})
    -- hl(0, "markdownItalic", {link = "Italic"})
    -- hl(0, "markdownBoldItalic",
    -- {fg = c.yellow, bg = "NONE", bold = true, italic = true})
    -- hl(0, "markdownListMarker", {fg = c.blue, bg = "NONE"})
    -- hl(0, "markdownOrderedListMarker", {fg = c.purple, bg = "NONE"})
    -- hl(0, "markdownRule", {fg = c.gray, bg = "NONE"})
    -- hl(0, "markdownUrl", {fg = c.cyan, bg = "NONE", underdotted = true})
    -- hl(0, "markdownLinkText", {fg = c.blue, bg = "NONE"})
    -- hl(0, "markdownFootnote", {fg = c.orange, bg = "NONE"})
    -- hl(0, "markdownFootnoteDefinition", {fg = c.orange, bg = "NONE"})
    -- hl(0, "markdownEscape", {fg = c.yellow, bg = "NONE"})
    -- markdownH1Delimiter = {fg = c.cyan},
    -- markdownH2Delimiter = {fg = c.red},
    -- markdownH3Delimiter = {fg = c.green}

    -- Whichkey
    -- hl(0, "WhichKey", {fg = c.purple, bg = "NONE"})
    -- hl(0, "WhichKeySeperator", {fg = c.green, bg = "NONE"})
    -- hl(0, "WhichKeyGroup", {fg = c.blue, bg = "NONE"})
    -- hl(0, "WhichKeyDesc", {fg = c.fg, bg = "NONE"})
    -- hl(0, "WhichKeyFloat", {fg = "NONE", bg = c.alt_bg})

    -- Git
    -- hl(0, "SignAdd", {fg = c.sign_add, bg = "NONE"})
    -- hl(0, "SignChange", {fg = c.sign_change, bg = "NONE"})
    -- hl(0, "SignDelete", {fg = c.sign_delete, bg = "NONE"})
    -- hl(0, "GitSignsAdd", {link = "SignAdd"}) -- diff mode: Added line |diff.txt|
    -- hl(0, "GitSignsAddNr", {link = "GitSignsAdd"}) -- diff mode: Added line |diff.txt|
    -- hl(0, "GitSignsAddLn", {link = "GitSignsAdd"}) -- diff mode: Added line |diff.txt|
    -- hl(0, "GitSignsChange", {link = "SignChange"}) -- diff mode: Changed line |diff.txt|
    -- hl(0, "GitSignsChangeNr", {link = "GitSignsChange"}) -- diff mode: Changed line |diff.txt|
    -- hl(0, "GitSignsChangeLn", {link = "GitSignsChange"}) -- diff mode: Changed line |diff.txt|
    -- hl(0, "GitSignsDelete", {link = "SignDelete"}) -- diff mode: Deleted line |diff.txt|
    -- hl(0, "GitSignsDeleteNr", {link = "GitSignsDelete"}) -- diff mode: Deleted line |diff.txt|
    -- hl(0, "GitSignsDeleteLn", {link = "GitSignsDelete"}) -- diff mode: Deleted line |diff.txt|

    -- Git Blame
    -- hl(0, "gitblame", {link = "Comment"})

    -- LSP Config
    hl(0, "LspInfoTitle", {link = 'Title'}) -- Client name
    hl(0, "LspInfoList", {link = 'Function'}) -- Server name list
    hl(0, "LspInfoFiletype", {link = 'Type'}) -- `filetypes` area
    hl(0, "LspInfoTip", {link = 'Comment'}) -- Tip
    hl(0, "LspInfoBorder", {link = 'Label'}) -- Window border

    -- LSP
    hl(0, "DiagnosticHint", {fg = c.hint, bg = "NONE"})
    hl(0, "DiagnosticInfo", {fg = c.info, bg = "NONE"})
    hl(0, "DiagnosticWarn", {link = "TSWarning"})
    hl(0, "DiagnosticError", {link = "TSError"})
    -- hl(0, "DiagnosticOther", {fg = c.ui_purple, bg = "NONE"})
    hl(0, "DiagnosticSignHint", {link = 'DiagnosticHint'})
    hl(0, "DiagnosticSignInfo", {link = 'DiagnosticInfo'})
    hl(0, "DiagnosticSignWarn", {link = 'DiagnosticWarn'})
    hl(0, "DiagnosticSignError", {link = 'DiagnosticError'})
    -- hl(0, "DiagnosticSignOther", {link = "DiagnosticOther"})
    -- hl(0, "DiagnosticSignWarning", {link = "DiagnosticWarn"})
    hl(0, "DiagnosticFloatingHint", {link = 'DiagnosticHint'})
    hl(0, "DiagnosticFloatingInfo", {link = 'DiagnosticInfo'})
    hl(0, "DiagnosticFloatingWarn", {link = 'DiagnosticWarn'})
    hl(0, "DiagnosticFloatingError", {link = 'DiagnosticError'})
    hl(0, "DiagnosticUnderlineHint",
       {fg = "NONE", bg = "NONE", sp = c.hint, undercurl = true})
    hl(0, "DiagnosticUnderlineInfo",
       {fg = "NONE", bg = "NONE", sp = c.info, undercurl = true})
    hl(0, "DiagnosticUnderlineWarn",
       {fg = "NONE", bg = "NONE", sp = c.warn, undercurl = true})
    hl(0, "DiagnosticUnderlineError",
       {fg = "NONE", bg = "NONE", sp = c.error, undercurl = true})
    -- hl(0, "DiagnosticSignInformation", {link = "DiagnosticInfo"})
    hl(0, "DiagnosticVirtualTextHint", {link = 'DiagnosticHint'})
    hl(0, "DiagnosticVirtualTextInfo", {link = 'DiagnosticInfo'})
    hl(0, "DiagnosticVirtualTextWarn", {link = 'DiagnosticWarn'})
    hl(0, "DiagnosticVirtualTextError", {link = 'DiagnosticError'})
    -- hl(0, "LspDiagnosticsError", {fg = c.error, bg = "NONE"})
    -- hl(0, "LspDiagnosticsWarning", {fg = c.warn, bg = "NONE"})
    -- hl(0, "LspDiagnosticsInfo", {fg = c.info, bg = "NONE"})
    -- hl(0, "LspDiagnosticsInformation", {link = "LspDiagnosticsInfo"})
    -- hl(0, "LspDiagnosticsHint", {fg = c.hint, bg = "NONE"})
    -- hl(0, "LspDiagnosticsDefaultError", {link = "LspDiagnosticsError"}) -- used as the base "Error" highlight group (except Underline)
    -- hl(0, "LspDiagnosticsDefaultWarning", {link = "LspDiagnosticsWarning"}) -- used as the base "Warning" highlight group (except Underline)
    -- hl(0, "LspDiagnosticsDefaultInformation", {link = "LspDiagnosticsInfo"}) -- used as the base "Information" highlight group (except Underline)
    -- hl(0, "LspDiagnosticsDefaultInfo", {link = "LspDiagnosticsInfo"}) -- used as the base "Information" highlight group (except Underline)
    -- hl(0, "LspDiagnosticsDefaultHint", {link = "LspDiagnosticsHint"}) -- used as the base "Hint" highlight group (except Underline)
    -- hl(0, "LspDiagnosticsVirtualTextError",
    -- {link = "DiagnosticVirtualTextError"}) -- used for "Error" diagnostic virtual text
    -- hl(0, "LspDiagnosticsVirtualTextWarning",
    -- {link = "DiagnosticVirtualTextWarn"}) -- used for "Warning" diagnostic virtual text
    -- hl(0, "LspDiagnosticsVirtualTextInformation",
    -- {link = "DiagnosticVirtualTextInfo"}) -- used for "Information" diagnostic virtual text
    -- hl(0, "LspDiagnosticsVirtualTextInfo", {link = "DiagnosticVirtualTextInfo"}) -- used for "Information" diagnostic virtual text
    -- hl(0, "LspDiagnosticsVirtualTextHint", {link = "DiagnosticVirtualTextHint"}) -- used for "Hint" diagnostic virtual text
    -- hl(0, "LspDiagnosticsFloatingError", {link = "LspDiagnosticsError"}) -- used for "Error" diagnostic messages in the diagnostics float
    -- hl(0, "LspDiagnosticsFloatingWarning", {link = "LspDiagnosticsWarning"}) -- used for "Warning" diagnostic messages in the diagnostics float
    -- hl(0, "LspDiagnosticsFloatingInformation", {link = "LspDiagnosticsInfo"}) -- used for "Information" diagnostic messages in the diagnostics float
    -- hl(0, "LspDiagnosticsFloatingInfo", {link = "LspDiagnosticsInfo"}) -- used for "Information" diagnostic messages in the diagnostics float
    -- hl(0, "LspDiagnosticsFloatingHint", {link = "LspDiagnosticsHint"}) -- used for "Hint" diagnostic messages in the diagnostics float
    -- hl(0, "LspDiagnosticsSignError", {link = "LspDiagnosticsError"}) -- used for "Error" diagnostic signs in sign column
    -- hl(0, "LspDiagnosticsSignWarning", {link = "LspDiagnosticsWarning"}) -- used for "Warning" diagnostic signs in sign column
    -- hl(0, "LspDiagnosticsSignInformation", {link = "LspDiagnosticsInfo"}) -- used for "Information" diagnostic signs in sign column
    -- hl(0, "LspDiagnosticsSignInfo", {link = "LspDiagnosticsInfo"}) -- used for "Information" diagnostic signs in sign column
    -- hl(0, "LspDiagnosticsSignHint", {link = "LspDiagnosticsHint"}) -- used for "Hint" diagnostic signs in sign column
    -- hl(0, "LspDiagnosticsUnderlineError", {link = "DiagnosticUnderlineError"}) -- used to underline "Error" diagnostics
    -- hl(0, "LspDiagnosticsUnderlineWarning", {link = "DiagnosticUnderlineWarn"}) -- used to underline "Warning" diagnostics
    -- hl(0, "LspDiagnosticsUnderlineInformation",
    -- {link = "DiagnosticUnderlineInfo"}) -- used to underline "Information" diagnostics
    -- hl(0, "LspDiagnosticsUnderlineInfo", {link = "DiagnosticUnderlineInfo"}) -- used to underline "Information" diagnostics
    -- hl(0, "LspDiagnosticsUnderlineHint", {link = "DiagnosticUnderlineHint"}) -- used to underline "Hint" diagnostics
    -- hl(0, "LspReferenceRead", {fg = c.purple, bg = c.reference}) -- used for highlighting "read" references
    -- hl(0, "LspReferenceText", {fg = c.purple, bg = c.reference}) -- used for highlighting "text" references
    -- hl(0, "LspReferenceWrite", {fg = c.purple, bg = c.reference}) -- used for highlighting "write" references
    -- hl(0, "LspCodeLens", {fg = c.context, bg = "NONE", italic = true})
    -- hl(0, "LspCodeLensSeparator", {fg = c.context, bg = "NONE", italic = true})
    -- hl(0, "LspSignatureActiveParameter", {link = 'Search'})

    -- LSP Trouble
    -- hl(0, "LspTroubleSignError", {fg = c.error})
    -- hl(0, "LspTroubleWarning", {fg = c.yellow})
    -- hl(0, "LspTroubleInformation", {fg = c.paleblue})
    -- hl(0, "LspTroubleHint", {fg = c.purple})
    -- hl(0, "LspTroubleText", {fg = c.darkblue})
    -- hl(0, "LspTroubleTextError", {fg = c.error})
    -- hl(0, "LspTroubleTextWarning", {fg = c.error})
    -- hl(0, "LspTroubleTextInformation", {fg = c.paleblue})
    -- hl(0, "LspTroubleTextHint", {fg = c.purple})
    -- hl(0, "LspTroubleSignOther", {fg = c.paleblue})
    -- hl(0, "LspTroubleSignInformation", {fg = c.paleblue})
    -- hl(0, "LspTroubleFoldIcon", {fg = c.purple})
    -- hl(0, "LspTroubleNormal", {fg = c.fg, bg = c.bg})
    -- hl(0, "LspTroubleCount", {fg = c.purple, bg = c.darkblue})
    -- hl(0, "LspTroubleLocation", {fg = c.darkblue})
    -- hl(0, "LspTroubleFile", {fg = c.blue})
    -- hl(0, "LspTroublePreview", {fg = c.purple})
    -- hl(0, "LspTroubleIndent", {fg = c.darkblue})
    -- hl(0, "LspTroubleCode", {fg = c.white})
    -- hl(0, "LspTroubleError", {fg = c.error})
    -- hl(0, "LspTroubleSignWarning", {fg = c.yellow})
    -- hl(0, "LspTroubleSignHint", {fg = c.purple})
    -- hl(0, "LspTroubleSource", {fg = c.green})
    -- hl(0, "TroubleCount", {link = "LspTroubleCount"})
    -- hl(0, "TroubleError", {link = "LspTroubleError"})
    -- hl(0, "TroubleNormal", {link = "LspTroubleNormal"})
    -- hl(0, "TroubleTextInformation", {link = "LspTroubleTextInformation"})
    -- hl(0, "TroubleSignWarning", {link = "LspTroubleSignWarning"})
    -- hl(0, "TroubleLocation", {link = "LspTroubleLocation"})
    -- hl(0, "TroubleWarning", {link = "LspTroubleWarning"})
    -- hl(0, "TroublePreview", {link = "LspTroublePreview"})
    -- hl(0, "TroubleTextError", {link = "LspTroubleTextError"})
    -- hl(0, "TroubleSignInformation", {link = "LspTroubleSignInformation"})
    -- hl(0, "TroubleIndent", {link = "LspTroubleIndent"})
    -- hl(0, "TroubleSource", {link = "LspTroubleSource"})
    -- hl(0, "TroubleSignHint", {link = "LspTroubleSignHint"})
    -- hl(0, "TroubleSignOther", {link = "LspTroubleSignOther"})
    -- hl(0, "TroubleFoldIcon", {link = "LspTroubleFoldIcon"})
    -- hl(0, "TroubleTextWarning", {link = "LspTroubleTextWarning"})
    -- hl(0, "TroubleCode", {link = "LspTroubleCode"})
    -- hl(0, "TroubleInformation", {link = "LspTroubleInformation"})
    -- hl(0, "TroubleSignError", {link = "LspTroubleSignError"})
    -- hl(0, "TroubleFile", {link = "LspTroubleFile"})
    -- hl(0, "TroubleHint", {link = "LspTroubleHint"})
    -- hl(0, "TroubleTextHint", {link = "LspTroubleTextHint"})
    -- hl(0, "TroubleText", {link = "LspTroubleText"})

    -- LspSaga
    -- hl(0, "LspSagaFinderSelection", {fg = c.green})
    -- hl(0, "LspFloatWinNormal", {fg = c.purple})
    -- hl(0, "LspFloatWinBorder", {fg = c.purple})
    -- hl(0, "LspSagaBorderTitle", {fg = c.cyan})
    -- hl(0, "LspSagaHoverBorder", {fg = c.paleblue})
    -- hl(0, "TargetWord", {fg = c.cyan})
    -- hl(0, "ReferencesCount", {fg = c.purple})
    -- hl(0, "DefinitionCount", {fg = c.purple})
    -- hl(0, "TargetFileName", {fg = c.green})
    -- hl(0, "DefinitionIcon", {fg = c.blue})
    -- hl(0, "ReferencesIcon", {fg = c.blue})
    -- hl(0, "ProviderTruncateLine", {fg = c.black})
    -- hl(0, "SagaShadow", {fg = c.black})
    -- hl(0, "DiagnosticTruncateLine", {fg = c.fg})
    -- hl(0, "DefinitionPreviewTitle", {fg = c.green, bold = true})
    -- hl(0, "LspSagaShTruncateLine", {fg = c.black})
    -- hl(0, "LspSagaDocTruncateLine", {fg = c.black})
    -- hl(0, "LineDiagTruncateLine", {fg = c.gray})
    -- hl(0, "LspSagaCodeActionTitle", {fg = c.paleblue})
    -- hl(0, "LspSagaCodeActionTruncateLine", {fg = c.black})
    -- hl(0, "LspSagaCodeActionContent", {fg = c.purple})
    -- hl(0, "LspSagaRenamePromptPrefix", {fg = c.green})
    -- hl(0, "LspSagaRenameBorder", {fg = c.green})
    -- hl(0, "LspSagaHoverBorder", {fg = c.paleblue})
    -- hl(0, "LspSagaSignatureHelpBorder", {fg = c.pink})
    -- hl(0, "LspSagaCodeActionBorder", {fg = c.blue})
    -- hl(0, "LspSagaAutoPreview", {fg = c.pink})
    -- hl(0, "LspSagaDefPreviewBorder", {fg = c.green})
    -- hl(0, "LspLinesDiagBorder", {fg = c.yellow})

    -- Bufferline

    -- Neogit
    -- hl(0, "NeogitBranch", {fg = c.paleblue})
    -- hl(0, "NeogitRemote", {fg = c.purple})
    hl(0, "NeogitHunkHeader", {fg = c.fg, bg = c.purple})
    hl(0, "NeogitHunkHeaderHighlight", {fg = c.blue, bg = c.purple})
    hl(0, "NeogitDiffContextHighlight", {fg = c.darkblue, bg = c.purple})
    hl(0, "NeogitDiffDeleteHighlight", {fg = c.red})
    hl(0, "NeogitDiffAddHighlight", {fg = c.green})
    -- hl(0, "NeogitObjectId", {fg = c.green})
    -- hl(0, "NeogitCommitMessage", {fg = c.yellow})
    -- hl(0, "NeogitDiffAdd", {link = "NeogitDiffAddHighlight"})
    -- hl(0, "NeogitDiffDelete", {link = "NeogitDiffDeleteHighlight"})
    -- hl(0, "NeogitStash", {fg = c.green})
    -- hl(0, "NeogitUnmergedInto", {fg = c.yellow})
    -- hl(0, "NeogitUnpulledFrom", {fg = c.yellow})
    -- hl(0, "NeogitUntrackedfiles", {fg = c.yellow})
    -- hl(0, "NeogitUntrackedfilesRegion", {fg = c.yellow})
    -- hl(0, "NeogitUnstagedchanges", {fg = c.yellow})
    -- hl(0, "NeogitUnstagedchangesRegion", {fg = c.yellow})
    -- hl(0, "NeogitUnmergedchanges", {fg = c.yellow})
    -- hl(0, "NeogitUnmergedchangesRegion", {fg = c.yellow})
    -- hl(0, "NeogitUnpulledchanges", {fg = c.yellow})
    -- hl(0, "NeogitUnpulledchangesRegion", {fg = c.yellow})
    -- hl(0, "NeogitStagedchanges", {fg = c.yellow})
    -- hl(0, "NeogitStagedchangesRegion", {fg = c.yellow})
    -- hl(0, "NeogitStashes", {fg = c.yellow})
    -- hl(0, "NeogitStashesRegion", {fg = c.yellow})
    -- hl(0, "NeogitHeadRegion", {fg = c.yellow})
    -- hl(0, "NeogitPushRegion", {fg = c.yellow})
    -- hl(0, "NeogitUnmergedIntoRegion", {fg = c.yellow})
    -- hl(0, "NeogitUnpulledFromRegion", {fg = c.yellow})
    -- hl(0, "NeogitDiffAddRegion", {fg = c.yellow})
    -- hl(0, "NeogitDiffDeleteRegion", {fg = c.yellow})
    -- hl(0, "NeogitFold", {fg = c.none})

    -- GitGutter
    -- hl(0, "GitGutterAdd", {fg = c.green}) -- diff mode: Added line |diff.txt|
    -- hl(0, "GitGutterChange", {fg = c.yellow}) -- diff mode: Changed line |diff.txt|
    -- hl(0, "GitGutterDelete", {fg = c.red}) -- diff mode: Deleted line |diff.txt|

    -- Telescope
    hl(0, "TelescopeSelection", {fg = c.orange})
    hl(0, "TelescopeSelectionCaret", {fg = c.error})
    hl(0, "TelescopeMultiSelection", {fg = c.gray})
    hl(0, "TelescopeMultiIcon", {link = 'Identifier'})
    hl(0, "TelescopeNormal", {fg = c.fg, bg = c.alt_bg})
    hl(0, "TelescopePreviewNormal", {link = 'TelescopeNormal'})
    hl(0, "TelescopePromptNormal", {link = 'TelescopeNormal'})
    hl(0, "TelescopeResultsNormal", {link = 'TelescopeNormal'})
    hl(0, "TelescopeBorder", {fg = c.alt_fg, bg = "NONE"})
    hl(0, "TelescopePromptBorder", {link = 'TelescopeBorder'})
    hl(0, "TelescopeResultsBorder", {fg = c.white})
    hl(0, "TelescopePreviewBorder", {link = 'TelescopeBorder'})
    hl(0, "TelescopeTitle", {fg = c.orange, bg = "NONE"})
    hl(0, "TelescopePromptTitle", {link = 'TelescopeTitle'})
    hl(0, "TelescopeResultsTitle", {link = 'TelescopeTitle'})
    hl(0, "TelescopePreviewTitle", {link = 'TelescopeTitle'})
    hl(0, "TelescopePromptCounter", {fg = c.red, bg = "NONE"})
    hl(0, "TelescopeMatching",
       {fg = c.cyan, bg = "NONE", bold = true, italic = true})
    hl(0, "TelescopePromptPrefix", {fg = c.hint, bg = "NONE"})
    hl(0, "TelescopePreviewLine", {fg = c.none, bg = c.selection})
    hl(0, "TelescopePreviewMatch", {fg = c.purple, bg = c.white, reverse = true})
    hl(0, "TelescopePreviewPipe", {link = 'Constant'})
    hl(0, "TelescopePreviewCharDev", {link = 'Constant'})
    hl(0, "TelescopePreviewDirectory", {link = 'Directory'})
    hl(0, "TelescopePreviewBlock", {link = 'Constant'})
    hl(0, "TelescopePreviewLink", {fg = c.red})
    hl(0, "TelescopePreviewSocket", {link = 'Statement'})
    hl(0, "TelescopePreviewRead", {link = 'Constant'})
    hl(0, "TelescopePreviewWrite", {link = 'Statement'})
    hl(0, "TelescopePreviewExecute", {link = 'String'})
    hl(0, "TelescopePreviewHyphen", {fg = c.red, bg = "NONE"})
    hl(0, "TelescopePreviewSticky", {link = 'Keyword'})
    hl(0, "TelescopePreviewSize", {link = 'String'})
    hl(0, "TelescopePreviewUser", {link = 'Constant'})
    hl(0, "TelescopePreviewGroup", {link = 'Constant'})
    hl(0, "TelescopePreviewDate", {link = 'Directory'})
    hl(0, "TelescopePreviewMessage", {link = 'TelescopePreviewNormal'})
    hl(0, "TelescopePreviewMessageFillchar", {link = 'TelescopePreviewMessage'})
    hl(0, "TelescopeResultsClass", {link = 'Function'})
    hl(0, "TelescopeResultsConstant", {link = 'Constant'})
    hl(0, "TelescopeResultsField", {link = 'Function'})
    hl(0, "TelescopeResultsFunction", {link = 'Function'})
    hl(0, "TelescopeResultsMethod", {link = 'Method'})
    hl(0, "TelescopeResultsOperator", {link = 'Operator'})
    hl(0, "TelescopeResultsStruct", {link = 'Struct'})
    hl(0, "TelescopeResultsVariable", {link = 'SpecialChar'})
    hl(0, "TelescopeResultsLineNr", {link = 'LineNr'})
    hl(0, "TelescopeResultsIdentifier", {link = 'Identifier'})
    hl(0, "TelescopeResultsNumber", {link = 'Number'})
    hl(0, "TelescopeResultsComment", {link = 'Comment'})
    hl(0, "TelescopeResultsSpecialComment", {link = 'SpecialComment'})
    hl(0, "TelescopeResultsFileIcon", {link = 'Normal'})
    hl(0, "TelescopeResultsDiffChange", {link = 'DiffChange'})
    hl(0, "TelescopeResultsDiffAdd", {link = 'DiffAdd'})
    hl(0, "TelescopeResultsDiffDelete", {link = 'DiffDelete'})
    hl(0, "TelescopeResultsDiffUntracked", {link = 'NonText'})

    -- NvimTree
    -- hl(0, "NvimTreeFolderIcon", {link = "Directory"})
    -- hl(0, "NvimTreeIndentMarker", {fg = c.context, bg = "NONE"})
    -- hl(0, "NvimTreeNormal", {fg = c.fg, bg = c.alt_bg})
    -- hl(0, "NvimTreeVertSplit", {fg = c.alt_fg, bg = c.alt_bg})
    -- hl(0, "NvimTreeFolderName", {link = "Directory"})
    -- hl(0, "NvimTreeOpenedFolderName",
    -- {fg = c.folder_blue, bg = "NONE", bold = true, italic = true})
    -- hl(0, "NvimTreeEmptyFolderName", {fg = c.gray, bg = "NONE", italic = true})
    -- hl(0, "NvimTreeGitIgnored", {fg = c.gray, bg = "NONE", italic = true})
    -- hl(0, "NvimTreeImageFile", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "NvimTreeSpecialFile", {fg = c.purple, bg = "NONE", underline = true})
    -- hl(0, "NvimTreeEndOfBuffer", {fg = c.alt_bg, bg = "NONE"})
    -- hl(0, "NvimTreeCursorLine", {fg = "NONE", bg = c.line})
    -- hl(0, "NvimTreeGitStaged", {fg = c.orange, bg = "NONE"})
    -- hl(0, "NvimTreeGitNew", {fg = c.green, bg = "NONE"})
    -- hl(0, "NvimTreeGitRenamed", {fg = c.pink, bg = "NONE"})
    -- hl(0, "NvimTreeGitDeleted", {fg = c.orange, bg = "NONE"})
    -- hl(0, "NvimTreeGitMerge", {fg = c.blue, bg = "NONE"})
    -- hl(0, "NvimTreeGitDirty", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "NvimTreeSymlink", {fg = c.cyan, bg = "NONE", bold = true})
    -- hl(0, "NvimTreeRootFolder", {fg = c.blue, bg = "NONE", bold = true})
    -- hl(0, "NvimTreeExecFile", {fg = c.green, bg = "NONE"})
    -- hl(0, "NvimTreeLspDiagnosticsError", {link = "LspDiagnosticsError"})
    -- hl(0, "NvimTreeLspDiagnosticsWarning", {link = "LspDiagnosticsWarning"})
    -- hl(0, "NvimTreeLspDiagnosticsInformation", {link = "LspDiagnosticsInfo"})
    -- hl(0, "NvimTreeLspDiagnosticsInfo", {link = "LspDiagnosticsInfo"})
    -- hl(0, "NvimTreeLspDiagnosticsHint", {link = "LspDiagnosticsHint"})
    -- -- hl(0, "NvimTreeOpenedFile", {fg = c.orange, bg = 'NONE', bold = true})
    -- -- hl(0, "NvimTreeWindowPicker", {fg = c.gray, bg = c.blue, bold = true})
    -- -- hl(0, "NvimTreeStatusLine", {fg = c.fg, bg = c.bg})
    -- -- hl(0, "NvimTreeStatusLineNC", {fg = c.darkblue, bg = c.bg})
    -- -- hl(0, "NvimTreeFileNew", {fg = c.green})
    -- -- hl(0, "NvimTreeFileMerge", {fg = c.blue})
    -- -- hl(0, "NvimTreeFileDirty", {link = 'NvimTreeGitDirty'})
    -- -- hl(0, "NvimTreeFileRenamed", {link = 'NvimTreeGitRenamed'})
    -- -- hl(0, "NvimTreeCursorColumn", {link = 'CursorColumn'})
    -- -- hl(0, "NvimTreeFileDeleted", {link = 'NvimTreeGitDeleted'})
    -- -- hl(0, "NvimTreePopup", {fg = c.fg, bg = c.bg})
    -- -- hl(0, "NvimTreeFileStaged", {link = 'NvimTreeGitStaged'})

    -- Lir
    -- hl(0, "LirFloatNormal", {fg = c.fg, bg = c.alt_bg})
    -- hl(0, "LirDir", {link = "Directory"})
    -- hl(0, "LirSymLink", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "LirEmptyDirText", {fg = c.gray, bg = "NONE", italic = true})

    -- Buffer
    -- hl(0, "BufferCurrent", {fg = c.fg, bg = c.bg})
    -- hl(0, "BufferCurrentIndex", {fg = c.fg, bg = c.bg})
    -- hl(0, "BufferCurrentMod", {fg = c.info, bg = c.bg})
    -- hl(0, "BufferCurrentSign", {fg = c.hint, bg = c.bg})
    -- hl(0, "BufferCurrentTarget", {fg = c.red, bg = c.bg, bold = true})
    -- hl(0, "BufferVisible", {fg = c.fg, bg = c.bg})
    -- hl(0, "BufferVisibleIndex", {fg = c.fg, bg = c.bg})
    -- hl(0, "BufferVisibleMod", {fg = c.info, bg = c.bg})
    -- hl(0, "BufferVisibleSign", {fg = c.gray, bg = c.bg})
    -- hl(0, "BufferVisibleTarget", {fg = c.red, bg = c.bg, bold = true})
    -- hl(0, "BufferInactive", {fg = c.gray, bg = c.alt_bg})
    -- hl(0, "BufferInactiveIndex", {fg = c.gray, bg = c.alt_bg})
    -- hl(0, "BufferInactiveMod", {fg = c.info, bg = c.alt_bg})
    -- hl(0, "BufferInactiveSign", {fg = c.gray, bg = c.alt_bg})
    -- hl(0, "BufferInactiveTarget", {fg = c.red, bg = c.alt_bg, bold = true})

    -- StatusLine
    hl(0, "StatusLine", {fg = c.context, bg = c.bg})
    hl(0, "StatusLineNC", {fg = c.line, bg = c.bg})
    -- hl(0, "StatusLineSeparator", {fg = c.line, bg = "NONE"})
    -- hl(0, "StatusLineTerm", {fg = c.line, bg = "NONE"})
    -- hl(0, "StatusLineTermNC", {fg = c.line, bg = "NONE"})

    -- IndentBlankline
    hl(0, "IndentBlanklineChar",
       {fg = c.dark_gray, bg = "NONE", nocombine = true}) -- Highlight of indent character.
    hl(0, "IndentBlanklineSpaceChar", {link = 'IndentBlanklineChar'}) -- Highlight of space character.
    hl(0, "IndentBlanklineSpaceCharBlankline", {link = 'IndentBlanklineChar'}) -- Highlight of space character on blank lines.
    hl(0, "IndentBlanklineContextChar",
       {fg = c.context, bg = "NONE", nocombine = true}) -- Highlight of indent character when base of current context. Only used when |g:indent_blankline_show_current_context| is active
    hl(0, "IndentBlanklineContextSpaceChar",
       {link = 'IndentBlanklineContextChar'}) -- Highlight of space characters one indent level of the current context. Only used when |g:indent_blankline_show_current_context| is active
    hl(0, "IndentBlanklineContextStart",
       {fg = "NONE", bg = "NONE", underline = true}) -- Highlight of the first line of the current context. Only used when |g:indent_blankline_show_current_context_start| is active

    -- Illuminate
    hl(0, "IlluminatedWordText", {link = 'Underlined'}) -- Default highlight group used for references if no kind information is available.
    hl(0, "IlluminatedWordRead", {link = 'Underlined'}) -- Highlight group used for references of kind read.
    hl(0, "IlluminatedWordWrite", {link = 'Underlined'}) -- Highlight group used for references of kind write.

    -- StartupTime
    hl(0, "StartupTimeStartupKey", {link = 'Normal'})
    hl(0, "StartupTimeStartupValue", {link = 'Title'})
    hl(0, "StartupTimeHeader", {link = 'ModeMsg'})
    hl(0, "StartupTimeSourcingEvent", {link = 'Type'})
    hl(0, "StartupTimeOtherEvent", {link = 'Identifier'})
    hl(0, "StartupTimeTime", {link = 'Directory'})
    hl(0, "StartupTimePercent", {link = 'Special'})
    hl(0, "StartupTimePlot", {link = 'Normal'})

    -- Dashboard
    -- hl(0, "DashboardHeader", {fg = c.blue, bg = "NONE"})
    -- hl(0, "DashboardCenter", {fg = c.purple, bg = "NONE"})
    -- hl(0, "DashboardFooter", {fg = c.cyan, bg = "NONE"})

    -- DiffView
    -- hl(0, "DiffViewNormal", {fg = c.gray, bg = c.alt_bg})
    -- hl(0, "DiffviewStatusAdded", {fg = c.sign_add, bg = "NONE"})
    -- hl(0, "DiffviewStatusModified", {fg = c.sign_change, bg = "NONE"})
    -- hl(0, "DiffviewStatusRenamed", {fg = c.sign_change, bg = "NONE"})
    -- hl(0, "DiffviewStatusDeleted", {fg = c.sign_delete, bg = "NONE"})
    -- hl(0, "DiffviewFilePanelInsertion", {fg = c.sign_add, bg = "NONE"})
    -- hl(0, "DiffviewFilePanelDeletion", {fg = c.sign_delete, bg = "NONE"})
    -- hl(0, "DiffviewVertSplit", {fg = "NONE", bg = c.bg})

    -- Bookmarks
    -- hl(0, "BookmarkSign", {fg = c.sign_change, bg = "NONE"})
    -- hl(0, "BookmarkAnnotationSign", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "BookmarkLine", {fg = c.ui2_blue, bg = "NONE"})
    -- hl(0, "BookmarkAnnotationLine", {fg = c.ui2_blue, bg = "NONE"})

    -- Bqf
    -- hl(0, "BqfPreviewBorder", {fg = c.fg, bg = "NONE"})
    -- hl(0, "BqfPreviewRange", {fg = "NONE", bg = c.ui2_blue})

    -- Nvim-Cmp
    hl(0, "CmpItemAbbrDefault", {fg = c.gray, bg = "NONE", strikethrough = true}) -- Highlight group for unmatched characters of each completion field.
    hl(0, "CmpItemAbbr", {link = 'CmpItemAbbrDefault'})
    hl(0, "CmpItemAbbrDeprecatedDefault", {fg = '#80a0ff'}) -- Highlight group for unmatched characters of each deprecated completion field.
    hl(0, "CmpItemAbbrDeprecated", {link = 'CmpItemAbbrDeprecatedDefault'})

    hl(0, "CmpItemAbbrMatchDefault", {fg = c.ui3_blue, bg = "NONE"}) -- Highlight group for matched characters of each completion field. Matched characters must form a substring of a field which share a starting position.
    hl(0, "CmpItemAbbrMatch", {link = 'CmpItemAbbrMatchDefault'})
    hl(0, "CmpItemAbbrMatchFuzzyDefault", {fg = c.ui3_blue, bg = "NONE"}) -- Highlight group for fuzzy-matched characters of each completion field.
    hl(0, "CmpItemAbbrMatchFuzzy", {link = 'CmpItemAbbrMatchFuzzyDefault'})
    hl(0, "CmpItemKindDefault", {fg = c.fg, bg = "NONE"})
    hl(0, "CmpItemKind", {link = 'CmpItemKindDefault'})
    hl(0, "CmpItemKindTextDefault", {link = 'CmpItemKind'})
    hl(0, "CmpItemKindText", {link = 'CmpItemKindTextDefault'})
    hl(0, "CmpItemKindFunctionDefault", {fg = c.blue, bg = "NONE"})
    hl(0, "CmpItemKindFunction", {link = 'CmpItemKindFunctionDefault'})
    hl(0, "CmpItemKindMethodDefault", {link = 'CmpItemKindFunctionDefault'})
    hl(0, "CmpItemKindMethod", {link = 'CmpItemKindMethodDefault'})
    hl(0, "CmpItemKindConstructorDefault", {fg = c.cyan, bg = "NONE"})
    hl(0, "CmpItemKindConstructor", {link = 'CmpItemKindConstructorDefault'})
    hl(0, "CmpItemKindFieldDefault", {fg = c.red, bg = "NONE"})
    hl(0, "CmpItemKindField", {link = 'CmpItemKindFieldDefault'})
    hl(0, "CmpItemKindVariableDefault", {fg = c.red, bg = "NONE"})
    hl(0, "CmpItemKindVariable", {link = 'CmpItemKindVariableDefault'})
    hl(0, "CmpItemKindColorDefault", {link = 'CmpItemKind'})
    hl(0, "CmpItemKindColor", {link = 'CmpItemKindColorDefault'})
    hl(0, "CmpItemKindFileDefault", {link = 'CmpItemKind'})
    hl(0, "CmpItemKindFile", {link = 'CmpItemKindFileDefault'})
    hl(0, "CmpItemKindReferenceDefault", {link = 'CmpItemKind'})
    hl(0, "CmpItemKindReference", {link = 'CmpItemKindReferenceDefault'})
    hl(0, "CmpItemKindPropertyDefault", {fg = c.red, bg = "NONE"})
    hl(0, "CmpItemKindProperty", {link = 'CmpItemKindPropertyDefault'})
    hl(0, "CmpItemKindUnitDefault", {link = 'CmpItemKind'})
    hl(0, "CmpItemKindUnit", {link = 'CmpItemKindUnitDefault'})
    hl(0, "CmpItemKindConstantDefault", {fg = c.orange, bg = "NONE"})
    hl(0, "CmpItemKindConstant", {link = 'CmpItemKindConstantDefault'})
    hl(0, "CmpItemKindEnumDefault", {fg = c.cyan, bg = "NONE"})
    hl(0, "CmpItemKindEnum", {link = 'CmpItemKindEnumDefault'})
    hl(0, "CmpItemKindEnumMemberDefault", {fg = c.orange, bg = "NONE"})
    hl(0, "CmpItemKindEnumMember", {link = 'CmpItemKindEnumMemberDefault'})
    hl(0, "CmpItemKindKeywordDefault", {fg = c.purple, bg = "NONE"})
    hl(0, "CmpItemKindKeyword", {link = 'CmpItemKindKeywordDefault'})
    hl(0, "CmpItemKindSnippetDefault", {fg = c.yellow, bg = "NONE"})
    hl(0, "CmpItemKindSnippet", {link = 'CmpItemKindSnippetDefault'})
    hl(0, "CmpItemKindTypeParameterDefault", {fg = c.red, bg = "NONE"})
    hl(0, "CmpItemKindTypeParameter", {link = 'CmpItemKindTypeParameterDefault'})
    hl(0, "CmpItemKindModuleDefault", {fg = c.cyan, bg = "NONE"})
    hl(0, "CmpItemKindModule", {link = 'CmpItemKindModuleDefault'})
    hl(0, "CmpItemKindOperatorDefault", {link = 'CmpItemKind'})
    hl(0, "CmpItemKindOperator", {link = 'CmpItemKindOperatorDefault'})
    hl(0, "CmpItemKindEventDefault", {fg = c.yellow, bg = "NONE"})
    hl(0, "CmpItemKindEvent", {link = 'CmpItemKindEventDefault'})
    hl(0, "CmpItemKindStructDefault", {fg = c.cyan, bg = "NONE"})
    hl(0, "CmpItemKindStruct", {link = 'CmpItemKindStructDefault'})
    hl(0, "CmpItemKindFolderDefault", {link = 'CmpItemKind'})
    hl(0, "CmpItemKindFolder", {link = 'CmpItemKindFolderDefault'})
    hl(0, "CmpItemKindClassDefault", {fg = c.cyan, bg = "NONE"})
    hl(0, "CmpItemKindClass", {link = 'CmpItemKindClassDefault'})
    hl(0, "CmpItemKindValueDefault", {link = 'CmpItemKind'})
    hl(0, "CmpItemKindValue", {link = 'CmpItemKindValueDefault'})
    hl(0, "CmpItemKindInterfaceDefault", {fg = c.cyan, bg = "NONE"})
    hl(0, "CmpItemKindInterface", {link = 'CmpItemKindInterfaceDefault'})
    hl(0, "CmpItemMenuDefault", {link = 'CmpItemKind'})
    hl(0, "CmpItemMenu", {link = 'CmpItemMenuDefault'})
    hl(0, "CmpItemKindEmoji", {link = 'CmpItemKind'})

    -- Navic
    -- hl(0, "NavicIconsFile", {fg = c.fg, bg = "NONE"})
    -- hl(0, "NavicIconsModule", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "NavicIconsNamespace", {fg = c.fg, bg = "NONE"})
    -- hl(0, "NavicIconsPackage", {fg = c.fg, bg = "NONE"})
    -- hl(0, "NavicIconsClass", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "NavicIconsMethod", {fg = c.blue, bg = "NONE"})
    -- hl(0, "NavicIconsProperty", {fg = c.red, bg = "NONE"})
    -- hl(0, "NavicIconsField", {fg = c.red, bg = "NONE"})
    -- hl(0, "NavicIconsConstructor", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "NavicIconsEnum", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "NavicIconsInterface", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "NavicIconsFunction", {fg = c.blue, bg = "NONE"})
    -- hl(0, "NavicIconsVariable", {fg = c.red, bg = "NONE"})
    -- hl(0, "NavicIconsConstant", {fg = c.orange, bg = "NONE"})
    -- hl(0, "NavicIconsString", {fg = c.green, bg = "NONE"})
    -- hl(0, "NavicIconsNumber", {fg = c.orange, bg = "NONE"})
    -- hl(0, "NavicIconsBoolean", {fg = c.orange, bg = "NONE"})
    -- hl(0, "NavicIconsArray", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "NavicIconsObject", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "NavicIconsKey", {fg = c.purple, bg = "NONE"})
    -- hl(0, "NavicIconsKeyword", {fg = c.purple, bg = "NONE"})
    -- hl(0, "NavicIconsNull", {fg = c.orange, bg = "NONE"})
    -- hl(0, "NavicIconsEnumMember", {fg = c.orange, bg = "NONE"})
    -- hl(0, "NavicIconsStruct", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "NavicIconsEvent", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "NavicIconsOperator", {fg = c.fg, bg = "NONE"})
    -- hl(0, "NavicIconsTypeParameter", {fg = c.red, bg = "NONE"})
    -- hl(0, "NavicText", {fg = c.context, bg = "NONE"})
    -- hl(0, "NavicSeparator", {fg = c.context, bg = "NONE"})

    -- Gps
    -- hl(0, "GpsNormal", {fg = c.gray, bg = "#1d1d1d"})
    -- hl(0, "GpsItemKindFunction", {fg = c.ui_purple, bg = "NONE"})
    -- hl(0, "GpsItemKindMethod", {fg = c.ui_purple, bg = "NONE"})
    -- hl(0, "GpsItemKindConstructor", {fg = c.ui_orange, bg = "NONE"})
    -- hl(0, "GpsItemKindClass", {fg = c.ui_orange, bg = "NONE"})
    -- hl(0, "GpsItemKindEnum", {fg = c.ui_orange, bg = "NONE"})
    -- hl(0, "GpsItemKindEvent", {fg = c.ui_purple, bg = "NONE"})
    -- hl(0, "GpsItemKindInterface", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindStruct", {fg = c.ui4_blue, bg = "NONE"})
    -- hl(0, "GpsItemKindVariable", {fg = c.ui4_blue, bg = "NONE"})
    -- hl(0, "GpsItemKindField", {fg = c.ui4_blue, bg = "NONE"})
    -- hl(0, "GpsItemKindProperty", {fg = c.ui4_blue, bg = "NONE"})
    -- hl(0, "GpsItemKindEnumMember", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindConstant", {fg = c.ui4_blue, bg = "NONE"})
    -- hl(0, "GpsItemKindKeyword", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindModule", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindValue", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindUnit", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindText", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindSnippet", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindFile", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindFolder", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindColor", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindReference", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindOperator", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindTypeParameter", {fg = c.fg, bg = "NONE"})

    -- Rainbow
    hl(0, "rainbowcol1", {fg = '#cc241d'})
    hl(0, "rainbowcol2", {fg = '#a89984'})
    hl(0, "rainbowcol3", {fg = '#b16286'})
    hl(0, "rainbowcol4", {fg = '#d79921'})
    hl(0, "rainbowcol5", {fg = '#689d6a'})
    hl(0, "rainbowcol6", {fg = '#d65d0e'})
    hl(0, "rainbowcol7", {fg = '#458588'})

    -- Packer
    -- hl(0, "packerString", {fg = c.ui_orange, bg = "NONE"})
    -- hl(0, "packerHash", {fg = c.ui4_blue, bg = "NONE"})
    -- hl(0, "packerOutput", {fg = c.ui_purple, bg = "NONE"})
    -- hl(0, "packerRelDate", {fg = c.gray, bg = "NONE"})
    -- hl(0, "packerSuccess", {fg = c.success_green, bg = "NONE"})
    -- hl(0, "packerStatusSuccess", {fg = c.ui4_blue, bg = "NONE"})

    -- SymbolOutline
    -- hl(0, "SymbolsOutlineConnector", {fg = c.gray, bg = "NONE"})
    -- hl(0, "FocusedSymbol", {fg = "NONE", bg = "#36383F"})

    -- Notify
    -- hl(0, "NotifyERRORBorder", {fg = "#8A1F1F", bg = "NONE"})
    -- hl(0, "NotifyWARNBorder", {fg = "#79491D", bg = "NONE"})
    -- hl(0, "NotifyINFOBorder", {fg = c.ui_blue, bg = "NONE"})
    -- hl(0, "NotifyDEBUGBorder", {fg = c.gray, bg = "NONE"})
    -- hl(0, "NotifyTRACEBorder", {fg = "#4F3552", bg = "NONE"})
    -- hl(0, "NotifyERRORIcon", {fg = c.error, bg = "NONE"})
    -- hl(0, "NotifyWARNIcon", {fg = c.warn, bg = "NONE"})
    -- hl(0, "NotifyINFOIcon", {fg = c.ui4_blue, bg = "NONE"})
    -- hl(0, "NotifyDEBUGIcon", {fg = c.gray, bg = "NONE"})
    -- hl(0, "NotifyTRACEIcon", {fg = c.ui_purple, bg = "NONE"})
    -- hl(0, "NotifyERRORTitle", {fg = c.error, bg = "NONE"})
    -- hl(0, "NotifyWARNTitle", {fg = c.warn, bg = "NONE"})
    -- hl(0, "NotifyINFOTitle", {fg = c.ui4_blue, bg = "NONE"})
    -- hl(0, "NotifyDEBUGTitle", {fg = c.gray, bg = "NONE"})
    -- hl(0, "NotifyTRACETitle", {fg = c.ui_purple, bg = "NONE"})

    -- Renamer
    hl(0, "RenamerNormal", {link = 'Normal'})
    hl(0, "RenamerBorder", {link = 'RenamerNormal'})
    hl(0, "RenamerTitle", {link = 'Identifier'})

    -- Hop
    -- hl(0, "HopNextKey", {fg = "#4ae0ff", bg = "NONE"})
    -- hl(0, "HopNextKey1", {fg = "#d44eed", bg = "NONE"})
    -- hl(0, "HopNextKey2", {fg = "#b42ecd", bg = "NONE"})
    -- hl(0, "HopUnmatched", {fg = c.gray, bg = "NONE"})
    -- hl(0, "HopPreview", {fg = "#c7ba7d", bg = "NONE"})

    -- Crates
    -- hl(0, "CratesNvimLoading", {fg = c.hint, bg = "NONE"})
    -- hl(0, "CratesNvimVersion", {fg = c.hint, bg = "NONE"})

    -- DAP UI
    hl(0, "DapUIVariable", {link = 'Normal'})
    hl(0, "DapUIScope", {fg = '#00f1f5', bold = true})
    hl(0, "DapUIType", {fg = '#d484ff'})
    hl(0, "DapUIValue", {link = 'Normal'})
    hl(0, "DapUIModifiedValue", {link = 'DapUIScope'})
    hl(0, "DapUIDecoration", {link = 'DapUIScope'})
    hl(0, "DapUIThread", {fg = '#a9ff68', bold = true})
    hl(0, "DapUIStoppedThread", {link = 'DapUIScope'})
    hl(0, "DapUIFrameName", {link = 'Normal'})
    hl(0, "DapUISource", {fg = '#d484ff'})
    hl(0, "DapUILineNumber", {link = 'DapUIScope'})
    hl(0, "DapUIFloatBorder", {link = 'DapUIScope'})
    hl(0, "DapUIWatchesEmpty", {fg = '#f70067'})
    hl(0, "DapUIWatchesValue", {link = 'DapUIThread'})
    hl(0, "DapUIWatchesError", {link = 'DapUIWatchesEmpty'})
    hl(0, "DapUIBreakpointsPath", {link = 'DapUIScope'})
    hl(0, "DapUIBreakpointsInfo", {link = 'DapUIThread'})
    hl(0, "DapUIBreakpointsCurrentLine", {link = 'DapUIThread'})
    hl(0, "DapUIBreakpointsLine", {link = 'DapUILineNumber'})
    hl(0, "DapUIBreakpointsDisabledLine", {fg = '#424242'})
    hl(0, "DapUICurrentFrameName", {link = 'DapUIBreakpointsCurrentLine'})

    -- Misc
    hl(0, "diffAdded", {fg = c.sign_add, bg = "NONE"})
    -- hl(0, "diffRemoved", {fg = c.sign_delete, bg = "NONE"})
    -- hl(0, "diffFileId", {fg = c.blue, bg = "NONE", bold = true, reverse = true})
    -- hl(0, "diffFile", {fg = c.alt_bg, bg = "NONE"})
    -- hl(0, "diffNewFile", {fg = c.green, bg = "NONE"})
    -- hl(0, "diffOldFile", {fg = c.red, bg = "NONE"})
    hl(0, "debugPc", {fg = "NONE", bg = c.ui5_blue})
    -- hl(0, "debugBreakpoint", {fg = c.red, bg = "NONE", reverse = true})
    -- hl(0, "CodiVirtualText", {fg = c.hint, bg = "NONE"})
    -- hl(0, "SniprunVirtualTextOk", {fg = c.hint, bg = "NONE"})
    -- hl(0, "SniprunFloatingWinOk", {fg = c.hint, bg = "NONE"})
    -- hl(0, "SniprunVirtualTextErr", {fg = c.error, bg = "NONE"})
    -- hl(0, "SniprunFloatingWinErr", {fg = c.error, bg = "NONE"})
    -- hl(0, "DapBreakpoint", {fg = c.error, bg = "NONE"})

    -- Language
    -- hl(0, "xmlTag", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "xmlTagName", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "xmlEndTag", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "yamlPlainScalar", {fg = c.orange, bg = "NONE"})
    -- hl(0, "yamlTSField", {fg = c.blue, bg = "NONE"})
    -- hl(0, "luaFunc", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "luaFunction", {fg = c.blue, bg = "NONE"})
    -- hl(0, "hclTSPunctSpecial", {fg = c.alt_fg, bg = "NONE"})
    -- hl(0, "htmlH1", {fg = c.fg, bg = "NONE"})
    -- hl(0, "htmlH2", {fg = c.fg, bg = "NONE"})
    -- hl(0, "htmlH3", {fg = c.fg, bg = "NONE"})
    -- hl(0, "htmlH4", {fg = c.fg, bg = "NONE"})
    -- hl(0, "htmlH5", {fg = c.fg, bg = "NONE"})
    -- hl(0, "htmlH6", {fg = c.fg, bg = "NONE"})
    -- hl(0, "htmlHead", {fg = c.fg, bg = "NONE"})
    -- hl(0, "htmlTitle", {fg = c.fg, bg = "NONE"})
    -- hl(0, "htmlArg", {fg = c.fg, bg = "NONE"})
    -- hl(0, "htmlTag", {fg = c.blue, bg = "NONE"})
    -- hl(0, "htmlTagN", {fg = c.blue, bg = "NONE"})
    -- hl(0, "htmlTagName", {fg = c.blue, bg = "NONE"})
    -- hl(0, "htmlComment", {fg = c.green, bg = "NONE"})
    -- hl(0, "htmlLink", {fg = c.orange, bg = "NONE", underline = true})
    -- hl(0, "cssBraces", {fg = c.fg, bg = "NONE"})
    -- hl(0, "cssInclude", {fg = c.purple, bg = "NONE"})
    -- hl(0, "cssTagName", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "cssClassName", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "cssPseudoClass", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "cssPseudoClassId", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "cssPseudoClassLang", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "cssIdentifier", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "cssProp", {fg = c.fg, bg = "NONE"})
    -- hl(0, "cssDefinition", {fg = c.fg, bg = "NONE"})
    -- hl(0, "cssAttr", {fg = c.orange, bg = "NONE"})
    -- hl(0, "cssAttrRegion", {fg = c.orange, bg = "NONE"})
    -- hl(0, "cssColor", {fg = c.orange, bg = "NONE"})
    -- hl(0, "cssFunction", {fg = c.purple, bg = "NONE"})
    -- hl(0, "cssFunctionName", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "cssVendor", {fg = c.orange, bg = "NONE"})
    -- hl(0, "cssValueNumber", {fg = c.orange, bg = "NONE"})
    -- hl(0, "cssValueLength", {fg = c.orange, bg = "NONE"})
    -- hl(0, "cssUnitDecorators", {fg = c.orange, bg = "NONE"})
    -- hl(0, "cssStyle", {fg = c.fg, bg = "NONE"})
    -- hl(0, "cssImportant", {fg = c.blue, bg = "NONE"})
    -- hl(0, "jsonKeyword", {fg = c.blue, bg = "NONE"})
    -- hl(0, "yamlBlockMappingKey", {fg = c.blue, bg = "NONE"})
    -- hl(0, "tomlTSProperty", {fg = c.blue, bg = "NONE"})
end

return theme
