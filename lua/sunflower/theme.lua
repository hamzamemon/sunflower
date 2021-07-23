local sunflower = require("sunflower.colors")

local theme = {}

theme.loadEditor = function()
    local editor = {
        ColorColumn = {fg = sunflower.none, bg = sunflower.gray}, --  used for the columns set with 'colorcolumn'
        Conceal = {fg = sunflower.disabled}, -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor = {fg = sunflower.cursor, style = 'reverse'}, -- character under the cursor
        lCursor = {fg = sunflower.cursor, style = 'reverse'}, -- the character under the cursor when language-mapping is used (see 'guicursor')
        CursorIM = {fg = sunflower.cursor, style = 'reverse'}, -- like Cursor, but used when in IME mode
        CursorColumn = {fg = sunflower.cursor, style = 'reverse'}, -- Screen-column at the cursor, when 'cursorcolumn' is set
        CursorLine = {fg = sunflower.purple, style = 'reverse'}, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set
        Directory = {fg = sunflower.blue}, -- directory names (and other special names in listings)
        DiffAdd = {fg = sunflower.green, style = 'reverse'}, -- diff mode: Added line
        DiffChange = {fg = sunflower.yellow, style = 'reverse'}, --  diff mode: Changed line
        DiffDelete = {fg = sunflower.red, style = 'reverse'}, -- diff mode: Deleted line
        DiffText = {fg = sunflower.orange, style = 'reverse'}, -- diff mode: Changed text within a changed line
        EndOfBuffer = {fg = sunflower.disabled}, -- filler lines (~) after the end of the buffer
        TermCursor = {fg = sunflower.cursor}, -- cursor in a focused terminal
        TermCursorNC = {fg = sunflower.cursor}, -- cursor in an unfocused terminal
        ErrorMsg = {fg = sunflower.none}, -- error messages on the command line
        VertSplit = {fg = sunflower.bg}, -- the column separating vertically split windows
        Folded = {fg = sunflower.disabled, style = 'italic'}, -- line used for closed folds
        FoldColumn = {fg = sunflower.blue}, -- 'foldcolumn'
        SignColumn = {fg = sunflower.fg, bg = sunflower.bg}, -- column where signs are displayed
        IncSearch = {
            fg = sunflower.purple,
            bg = sunflower.white,
            style = 'reverse'
        }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        Substitute = {
            fg = sunflower.purple,
            bg = sunflower.white,
            style = 'reverse'
        }, -- :substitute replacement text highlighting
        LineNr = {fg = sunflower.darkblue}, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set
        CursorLineNr = {fg = sunflower.purple}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line
        MatchParen = {
            fg = sunflower.yellow,
            bg = sunflower.none,
            style = 'bold'
        }, -- the character under the cursor or just before it, if it is a paired bracket, and its match
        ModeMsg = {fg = sunflower.purple}, -- 'showmode' message (e.g., "-- INSERT --")
        MsgArea = {fg = sunflower.purple}, -- area for messages and cmdline
        MsgSeparator = {fg = sunflower.purple}, -- separator for scrolled messages, msgsep flag of 'display'
        MoreMsg = {fg = sunflower.purple}, -- 'more-prompt'
        NonText = {fg = sunflower.disabled}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line)
        Normal = {fg = sunflower.fg, bg = sunflower.bg}, -- normal text
        NormalFloat = {fg = sunflower.fg, bg = sunflower.bg}, -- normal text in floating windows
        NormalNC = {fg = sunflower.fg, bg = sunflower.bg}, -- normal text in non-current windows
        Pmenu = {fg = sunflower.darkblue, bg = sunflower.purple}, -- popup menu: normal item
        PmenuSel = {fg = sunflower.purple, bg = sunflower.darkblue}, -- popup menu: selected item
        PmenuSbar = {fg = sunflower.darkblue, bg = sunflower.purple}, -- popup menu: scrollbar
        PmenuThumb = {fg = sunflower.fg, bg = sunflower.purple}, -- popup menu: thumb of the scrollbar
        Question = {fg = sunflower.green}, -- 'hit-enter' prompt and yes/no questions
        QuickFixLine = {
            fg = sunflower.purple,
            bg = sunflower.white,
            style = 'reverse'
        }, -- current 'quickfix' item in the quickfix window. Combined with 'hl-CursorLine' when the cursor is there
        Search = {
            fg = sunflower.purple,
            bg = sunflower.white,
            style = 'reverse'
        }, -- last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out
        SpecialKey = {fg = sunflower.purple}, -- unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. 'hl-Whitespace'
        SpellBad = {style = 'undercurl'}, -- word that is not recognized by the spellchecker. 'spell'
        SpellCap = {style = 'undercurl'}, -- word that should start with a capital. 'spell'
        SpellLocal = {}, -- word that is recognized by the spellchecker as one that is used in another region. 'spell'
        SpellRare = {}, -- word that is recognized by the spellchecker as one that is hardly ever used. 'spell'
        StatusLine = {fg = sunflower.fg, bg = sunflower.bg}, -- status line of current window
        StatusLineNC = {fg = sunflower.darkblue, bg = sunflower.disabled}, -- status lines of not-current windows.Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window
        Tabline = {fg = sunflower.fg}, -- tab pages line, not active tab page label
        TabLineFill = {fg = sunflower.fg}, -- tab pages line, where there are no labels
        TablineSel = {fg = sunflower.bg, bg = sunflower.purple}, -- tab pages line, active tab page label
        Title = {fg = sunflower.green, style = 'bold'}, -- titles for output from ":set all", ":autocmd" etc.
        Visual = {fg = sunflower.none, bg = sunflower.selection}, -- visual mode selection
        VisualNOS = {fg = sunflower.none, bg = sunflower.selection}, -- visual mode selection when Vim is "Not Owning the Selection"
        WarningMsg = {fg = sunflower.yellow}, -- warning messages
        Whitespace = {fg = sunflower.white}, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        WildMenu = {fg = sunflower.orange, style = 'bold'}, -- current match in 'wildmenu' completion
        ToolbarLine = {fg = sunflower.fg, bg = sunflower.bg},
        ToolbarButton = {fg = sunflower.fg, style = 'bold'},
        NormalMode = {fg = sunflower.blue, style = 'reverse'},
        InsertMode = {fg = sunflower.green, style = 'reverse'},
        ReplacelMode = {fg = sunflower.red, style = 'reverse'},
        VisualMode = {fg = sunflower.yellow, style = 'reverse'},
        CommandMode = {fg = sunflower.gray, style = 'reverse'},
        Warnings = {fg = sunflower.yellow},

        healthError = {fg = sunflower.error},
        healthWarning = {fg = sunflower.yellow},
        healthSuccess = {fg = sunflower.green}
    }

    return editor
end

theme.loadSyntax = function()
    local syntax = {
        Comment = {fg = sunflower.green}, -- any comment

        Constant = {fg = sunflower.green, style = 'bold'}, -- any constant
        String = {fg = sunflower.darkblue}, -- a string constant: "this is a string"
        Character = {fg = sunflower.orange, style = 'bold'}, -- a character constant: 'c', '\n'
        Number = {fg = sunflower.blue}, -- a number constant: 234, 0xff
        Boolean = {fg = sunflower.orange, style = 'bold'}, -- a boolean constant: TRUE, false
        Float = {fg = sunflower.blue}, -- a floating point constant: 2.3e10

        Identifier = {fg = sunflower.yellow}, -- any variable name
        Function = {fg = sunflower.yellow}, -- function name (also: methods for classes)

        Statement = {fg = sunflower.pink}, -- any statement
        Conditional = {fg = sunflower.orange, style = 'bold'}, -- if, then, else, endif, switch, etc.
        Repeat = {fg = sunflower.orange, style = 'bold'}, -- for, do, while, etc.
        Label = {fg = sunflower.cyan}, -- case, default, etc.
        Operator = {fg = sunflower.cyan}, -- sizeof, +, *, etc.
        Keyword = {fg = sunflower.orange, style = 'bold'}, -- any other keyword
        Exception = {fg = sunflower.cyan}, -- try, catch, throw

        PreProc = {fg = sunflower.purple}, -- generic preprocessor
        Include = {fg = sunflower.orange, style = 'bold'}, -- preprocessor #include
        Define = {fg = sunflower.pink}, -- preprocessor #define
        Macro = {fg = sunflower.cyan}, -- same as Define
        PreCondit = {fg = sunflower.cyan}, -- preprocessor #if, #else, #endif, etc.

        Type = {fg = sunflower.yellow}, -- int, long, char, etc.
        StorageClass = {fg = sunflower.cyan}, -- static, register, volatile, etc.
        Structure = {fg = sunflower.purple, style = 'bold'}, -- struct, union, enum, etc.
        Typedef = {fg = sunflower.red}, -- a typedef

        Special = {fg = sunflower.red}, -- any special symbol
        SpecialChar = {fg = sunflower.pink}, -- special character in a constant
        Tag = {fg = sunflower.red}, -- you can use CTRL-] on this
        Delimiter = {fg = sunflower.cyan}, -- character that needs attention like , or .
        SpecialComment = {fg = sunflower.gray}, -- special things inside a comment
        Debug = {fg = sunflower.red}, -- debugging statements

        Underlined = {
            fg = sunflower.paleblue,
            bg = sunflower.none,
            style = 'underline'
        }, -- text that stands out, HTML links

        Ignore = {fg = sunflower.disabled}, -- left blank, hidden

        Error = {
            fg = sunflower.error,
            bg = sunflower.none,
            style = 'bold,underline'
        }, -- any erroneous construct

        Todo = {
            fg = sunflower.yellow,
            bg = sunflower.none,
            style = 'bold,italic'
        }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        htmlLink = {fg = sunflower.paleblue, style = 'underline'},
        htmlH1 = {fg = sunflower.cyan, style = 'bold'},
        htmlH2 = {fg = sunflower.red, style = 'bold'},
        htmlH3 = {fg = sunflower.green, style = 'bold'},
        htmlH4 = {fg = sunflower.yellow, style = 'bold'},
        htmlH5 = {fg = sunflower.purple, style = 'bold'},
        markdownH1 = {fg = sunflower.cyan, style = 'bold'},
        markdownH2 = {fg = sunflower.red, style = 'bold'},
        markdownH3 = {fg = sunflower.green, style = 'bold'},
        markdownH1Delimiter = {fg = sunflower.cyan},
        markdownH2Delimiter = {fg = sunflower.red},
        markdownH3Delimiter = {fg = sunflower.green}
    }

    return syntax
end

theme.loadTerminal = function()
    vim.g.terminal_color_0 = sunflower.black
    vim.g.terminal_color_1 = sunflower.red
    vim.g.terminal_color_2 = sunflower.green
    vim.g.terminal_color_3 = sunflower.yellow
    vim.g.terminal_color_4 = sunflower.blue
    vim.g.terminal_color_5 = sunflower.purple
    vim.g.terminal_color_6 = sunflower.cyan
    vim.g.terminal_color_7 = sunflower.white
    vim.g.terminal_color_8 = sunflower.gray
    vim.g.terminal_color_9 = sunflower.red
    vim.g.terminal_color_10 = sunflower.green
    vim.g.terminal_color_11 = sunflower.yellow
    vim.g.terminal_color_12 = sunflower.blue
    vim.g.terminal_color_13 = sunflower.purple
    vim.g.terminal_color_14 = sunflower.cyan
    vim.g.terminal_color_15 = sunflower.white
end

theme.loadTreeSitter = function()
    local treesitter = {
        TSAnnotation = {fg = sunflower.yellow}, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information
        TSAttribute = {fg = sunflower.yellow}, -- (unstable) TODO: docs
        TSBoolean = {fg = sunflower.orange, style = 'bold'}, -- For booleans
        TSCharacter = {fg = sunflower.darkblue}, -- For characters
        TSComment = {fg = sunflower.green}, -- For comment blocks
        TSConditional = {fg = sunflower.orange, style = 'bold'}, -- For keywords related to conditionnals
        TSConstant = {fg = sunflower.green}, -- For constants
        TSConstBuiltin = {fg = sunflower.orange, style = 'bold'}, -- For constant that are built in the language: `nil` in Lua
        TSConstMacro = {fg = sunflower.orange, style = 'bold'}, -- For constants that are defined by macros: `NULL` in C
        TSConstructor = {fg = sunflower.yellow}, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors
        TSError = {fg = sunflower.error}, -- For syntax/parser errors
        TSException = {fg = sunflower.orange, style = 'bold'}, -- For exception related keywords
        TSField = {fg = sunflower.green}, -- For fields
        TSFloat = {fg = sunflower.blue}, -- For floats
        TSFunction = {fg = sunflower.yellow}, -- For fuction (calls and definitions)
        TSFuncBuiltin = {fg = sunflower.green}, -- For builtin functions: `table.insert` in Lua
        TSFuncMacro = {fg = sunflower.green}, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust
        TSInclude = {fg = sunflower.orange, style = 'bold'}, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua
        TSKeyword = {fg = sunflower.orange, style = 'bold'}, -- For keywords that don't fall in previous categories
        TSKeywordFunction = {fg = sunflower.orange, style = 'bold'}, -- For keywords used to define a fuction
        TSKeywordOperator = {fg = sunflower.orange, style = 'bold'}, -- For operators that are English words, e.g. and, as, or
        TSLabel = {fg = sunflower.red}, -- For labels: `label:` in C and `:label:` in Lua
        TSMethod = {fg = sunflower.yellow}, -- For method calls and definitions
        TSNamespace = {fg = sunflower.yellow}, -- For identifiers referring to modules and namespaces
        -- TSNone = { }, -- For no highlighting
        TSNumber = {fg = sunflower.blue}, -- For all numbers
        TSOperator = {fg = sunflower.gray}, -- For any operator: `+`, but also `->` and `*` in C
        TSParameter = {fg = sunflower.paleblue}, -- For parameters of a function
        TSParameterReference = {fg = sunflower.paleblue}, -- For references to parameters of a function
        TSProperty = {fg = sunflower.paleblue}, -- Same as `TSField`
        TSPunctDelimiter = {fg = sunflower.gray}, -- For delimiters ie: `.`
        TSPunctBracket = {fg = sunflower.gray}, -- For brackets and parens
        TSPunctSpecial = {fg = sunflower.gray}, -- For special punctutation that does not fall in the catagories before
        TSRepeat = {fg = sunflower.orange, style = 'bold'}, -- For keywords related to loops
        TSString = {fg = sunflower.darkblue}, -- For strings
        TSStringRegex = {fg = sunflower.darkblue}, -- For regexes
        TSStringEscape = {fg = sunflower.orange, style = 'bold'}, -- For escape characters within a string
        TSSymbol = {fg = sunflower.yellow}, -- For identifiers referring to symbols or atoms
        TSTag = {fg = sunflower.red}, -- Tags like html tag names
        TSTagDelimiter = {fg = sunflower.yellow}, -- Tag delimiter like `<` `>` `/`
        TSText = {fg = sunflower.darkblue}, -- For strings considered text in a markup language
        TSStrong = {fg = sunflower.paleblue, style = 'bold'}, -- For text to be represented in bold
        TSEmphasis = {fg = sunflower.paleblue, style = 'italic'}, -- For text to be represented with emphasis
        TSUnderline = {fg = sunflower.fg, style = 'underline'}, -- For text to be represented with an underline
        TSStrike = {}, -- For strikethrough text
        TSTitle = {fg = sunflower.paleblue, style = 'bold'}, -- Text that is part of a title
        TSLiteral = {fg = sunflower.fg}, -- Literal text
        TSURI = {fg = sunflower.link}, -- Any URI like a link or email
        TSMath = {fg = sunflower.paleblue}, -- For LaTeX-like math environments
        TSTextReference = {fg = sunflower.yellow}, -- For footnotes, text references, citations
        TSEnviroment = {fg = sunflower.blue}, -- For text environments of markup languages
        TSEnviromentName = {fg = sunflower.orange}, -- For the name/the string indicating the type of text environment
        TSNote = {fg = sunflower.gray}, -- Text representation of an informational note
        TSWarning = {fg = sunflower.yellow}, -- Text representation of a warning note
        TSDanger = {fg = sunflower.error}, -- Text representation of a danger note
        TSType = {fg = sunflower.yellow}, -- For types
        TSTypeBuiltin = {fg = sunflower.orange, style = 'bold'}, -- For builtin types
        TSVariable = {fg = sunflower.white}, -- Any variable name that does not have another highlight
        TSVariableBuiltin = {fg = sunflower.orange, style = 'bold'} -- Variable names that are defined by the languages, like `this` or `self`
    }

    return treesitter
end

theme.loadLSP = function()
    local lsp = {
        LspReferenceText = {fg = sunflower.purple}, -- used for highlighting "text" references
        LspReferenceRead = {fg = sunflower.purple}, -- used for highlighting "read" references
        LspReferenceWrite = {fg = sunflower.purple}, -- used for highlighting "write" references

        LspDiagnosticsDefaultError = {fg = sunflower.error}, -- used as the base "Error" highlight group (except Underline)
        LspDiagnosticsDefaultWarning = {fg = sunflower.yellow}, -- used as the base "Warning" highlight group (except Underline)
        LspDiagnosticsDefaultInformation = {fg = sunflower.paleblue}, -- used as the base "Information" highlight group (except Underline)
        LspDiagnosticsDefaultHint = {fg = sunflower.purple}, -- used as the base "Hint" highlight group (except Underline)

        LspDiagnosticsVirtualTextError = {fg = sunflower.error}, -- used for "Error" diagnostic virtual text
        LspDiagnosticsVirtualTextWarning = {fg = sunflower.yellow}, -- used for "Warning" diagnostic virtual text
        LspDiagnosticsVirtualTextInformation = {fg = sunflower.paleblue}, -- used for "Information" diagnostic virtual text
        LspDiagnosticsVirtualTextHint = {fg = sunflower.purple}, -- used for "Hint" diagnostic virtual text

        LspDiagnosticsUnderlineError = {
            style = 'undercurl',
            sp = sunflower.error
        }, -- used to underline "Error" diagnostics
        LspDiagnosticsUnderlineWarning = {
            style = 'undercurl',
            sp = sunflower.yellow
        }, -- used to underline "Warning" diagnostics
        LspDiagnosticsUnderlineInformation = {
            style = 'undercurl',
            sp = sunflower.paleblue
        }, -- used to underline "Information" diagnostics
        LspDiagnosticsUnderlineHint = {
            style = 'undercurl',
            sp = sunflower.purple
        }, -- used to underline "Hint" diagnostics

        LspDiagnosticsFloatingError = {fg = sunflower.error}, -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsFloatingWarning = {fg = sunflower.yellow}, -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsFloatingInformation = {fg = sunflower.paleblue}, -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsFloatingHint = {fg = sunflower.purple}, -- used for "Hint" diagnostic messages in the diagnostics float

        LspDiagnosticsSignError = {fg = sunflower.error}, -- used for "Error" diagnostic signs in sign column
        LspDiagnosticsSignWarning = {fg = sunflower.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignInformation = {fg = sunflower.paleblue}, -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsSignHint = {fg = sunflower.purple} -- used for "Hint" diagnostic signs in sign column
    }

    return lsp
end

theme.loadPlugins = function()
    local plugins = {

        -- LspTrouble
        LspTroubleSignError = {fg = sunflower.error},
        LspTroubleWarning = {fg = sunflower.yellow},
        LspTroubleInformation = {fg = sunflower.paleblue},
        LspTroubleHint = {fg = sunflower.purple},
        LspTroubleText = {fg = sunflower.darkblue},
        LspTroubleTextError = {fg = sunflower.error},
        LspTroubleTextWarning = {fg = sunflower.yellow},
        LspTroubleTextInformation = {fg = sunflower.paleblue},
        LspTroubleTextHint = {fg = sunflower.purple},
        LspTroubleSignOther = {fg = sunflower.paleblue},
        LspTroubleSignInformation = {fg = sunflower.paleblue},
        LspTroubleFoldIcon = {fg = sunflower.purple},
        LspTroubleNormal = {fg = sunflower.fg, bg = sunflower.bg},
        LspTroubleCount = {fg = sunflower.purple, bg = sunflower.darkblue},
        LspTroubleLocation = {fg = sunflower.darkblue},
        LspTroubleFile = {fg = sunflower.blue},
        LspTroublePreview = {fg = sunflower.purple},
        LspTroubleIndent = {fg = sunflower.darkblue},
        LspTroubleCode = {fg = sunflower.white},
        LspTroubleError = {fg = sunflower.error},
        LspTroubleSignWarning = {fg = sunflower.yellow},
        LspTroubleSignHint = {fg = sunflower.purple},
        LspTroubleSource = {fg = sunflower.green},
        TroubleCount = {fg = sunflower.bg, bg = sunflower.purple},
        TroubleError = {fg = sunflower.error},
        TroubleNormal = {fg = sunflower.fg, bg = sunflower.bg},
        TroubleTextInformation = {fg = sunflower.paleblue},
        TroubleSignWarning = {fg = sunflower.yellow},
        TroubleLocation = {fg = sunflower.darkblue},
        TroubleWarning = {fg = sunflower.yellow},
        TroublePreview = {
            fg = sunflower.purple,
            bg = sunflower.white,
            style = 'reverse'
        },
        TroubleTextError = {fg = sunflower.fg, bg = sunflower.bg},
        TroubleSignInformation = {fg = sunflower.paleblue},
        TroubleIndent = {fg = sunflower.darkblue},
        TroubleSource = {fg = sunflower.green},
        TroubleSignHint = {fg = sunflower.purple},
        TroubleSignOther = {fg = sunflower.paleblue},
        TroubleFoldIcon = {fg = sunflower.purple},
        TroubleTextWarning = {fg = sunflower.fg, bg = sunflower.bg},
        TroubleCode = {fg = sunflower.green},
        TroubleInformation = {fg = sunflower.paleblue},
        TroubleSignError = {fg = sunflower.error},
        TroubleFile = {fg = sunflower.blue},
        TroubleHint = {fg = sunflower.purple},
        TroubleTextHint = {fg = sunflower.fg, bg = sunflower.bg},
        TroubleText = {fg = sunflower.fg, bg = sunflower.bg},

        -- Neogit
        NeogitBranch = {fg = sunflower.paleblue},
        NeogitRemote = {fg = sunflower.purple},
        NeogitHunkHeader = {fg = sunflower.fg, bg = sunflower.purple},
        NeogitHunkHeaderHighlight = {fg = sunflower.blue, bg = sunflower.purple},
        NeogitDiffContextHighlight = {
            fg = sunflower.darkblue,
            bg = sunflower.purple
        },
        NeogitDiffDeleteHighlight = {fg = sunflower.red},
        NeogitDiffAddHighlight = {fg = sunflower.green},
        NeogitObjectId = {fg = sunflower.green},
        NeogitCommitMessage = {fg = sunflower.yellow},
        NeogitDiffAdd = {fg = sunflower.green},
        NeogitDiffDelete = {fg = sunflower.red},
        NeogitStash = {fg = sunflower.green},
        NeogitUnmergedInto = {fg = sunflower.yellow},
        NeogitUnpulledFrom = {fg = sunflower.yellow},
        NeogitUntrackedfiles = {fg = sunflower.yellow},
        NeogitUntrackedfilesRegion = {fg = sunflower.yellow},
        NeogitUnstagedchanges = {fg = sunflower.yellow},
        NeogitUnstagedchangesRegion = {fg = sunflower.yellow},
        NeogitUnmergedchanges = {fg = sunflower.yellow},
        NeogitUnmergedchangesRegion = {fg = sunflower.yellow},
        NeogitUnpulledchanges = {fg = sunflower.yellow},
        NeogitUnpulledchangesRegion = {fg = sunflower.yellow},
        NeogitStagedchanges = {fg = sunflower.yellow},
        NeogitStagedchangesRegion = {fg = sunflower.yellow},
        NeogitStashes = {fg = sunflower.yellow},
        NeogitStashesRegion = {fg = sunflower.yellow},
        NeogitHeadRegion = {fg = sunflower.yellow},
        NeogitPushRegion = {fg = sunflower.yellow},
        NeogitUnmergedIntoRegion = {fg = sunflower.yellow},
        NeogitUnpulledFromRegion = {fg = sunflower.yellow},
        NeogitDiffAddRegion = {fg = sunflower.yellow},
        NeogitDiffDeleteRegion = {fg = sunflower.yellow},
        NeogitFold = {fg = sunflower.none},

        -- GitGutter
        GitGutterAdd = {fg = sunflower.green}, -- diff mode: Added line |diff.txt|
        GitGutterChange = {fg = sunflower.yellow}, -- diff mode: Changed line |diff.txt|
        GitGutterDelete = {fg = sunflower.red}, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd = {fg = sunflower.green}, -- diff mode: Added line |diff.txt|
        GitSignsAddNr = {fg = sunflower.green}, -- diff mode: Added line |diff.txt|
        GitSignsAddLn = {fg = sunflower.green}, -- diff mode: Added line |diff.txt|
        GitSignsChange = {fg = sunflower.yellow}, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr = {fg = sunflower.yellow}, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn = {fg = sunflower.yellow}, -- diff mode: Changed line |diff.txt|
        GitSignsDelete = {fg = sunflower.red}, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr = {fg = sunflower.red}, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn = {fg = sunflower.red}, -- diff mode: Deleted line |diff.txt|

        -- Telescope
        TelescopeSelection = {fg = sunflower.orange},
        TelescopeSelectionCaret = {fg = sunflower.error},
        TelescopeMultiSelection = {fg = sunflower.gray},
        TelescopeNormal = {fg = sunflower.fg, bg = sunflower.bg},
        TelescopeMatching = {fg = sunflower.cyan},
        TelescopeBorder = {fg = sunflower.white},
        TelescopePromptBorder = {fg = sunflower.white},
        TelescopePreviewBorder = {fg = sunflower.white},
        TelescopePreviewNormal = {fg = sunflower.fg, bg = sunflower.bg},
        TelescopePreviewLine = {fg = sunflower.none, bg = sunflower.selection},
        TelescopePreviewMatch = {
            fg = sunflower.purple,
            bg = sunflower.white,
            style = 'reverse'
        },
        TelescopePreviewPipe = {fg = sunflower.green, style = 'bold'},
        TelescopePreviewCharDev = {fg = sunflower.green, style = 'bold'},
        TelescopePreviewDirectory = {fg = sunflower.blue},
        TelescopePreviewBlock = {fg = sunflower.green, style = 'bold'},
        TelescopePreviewLink = {fg = sunflower.red},
        TelescopePreviewSocket = {fg = sunflower.pink},
        TelescopePreviewRead = {fg = sunflower.green, style = 'bold'},
        TelescopePreviewWrite = {fg = sunflower.pink},
        TelescopePreviewExecute = {fg = sunflower.darkblue},
        TelescopePreviewHyphen = {fg = sunflower.disabled},
        TelescopePreviewSticky = {fg = sunflower.orange, style = 'bold'},
        TelescopePreviewSize = {fg = sunflower.darkblue},
        TelescopePreviewUser = {fg = sunflower.green, style = 'bold'},
        TelescopePreviewGroup = {fg = sunflower.green, style = 'bold'},
        TelescopePreviewDate = {fg = sunflower.blue},
        TelescopePromptPrefix = {fg = sunflower.error},
        TelescopeResultsBorder = {fg = sunflower.white},
        TelescopeResultsClass = {fg = sunflower.yellow},
        TelescopeResultsConstant = {fg = sunflower.green, style = 'bold'},
        TelescopeResultsField = {fg = sunflower.yellow},
        TelescopeResultsFunction = {fg = sunflower.yellow},
        TelescopeResultsMethod = {fg = sunflower.yellow},
        TelescopeResultsOperator = {fg = sunflower.cyan},
        TelescopeResultsStruct = {fg = sunflower.purple, style = 'bold'},
        TelescopeResultsVariable = {fg = sunflower.pink},
        TelescopeResultsLineNr = {fg = sunflower.darkblue},
        TelescopeResultsIdentifier = {fg = sunflower.yellow},
        TelescopeResultsNumber = {fg = sunflower.blue},
        TelescopeResultsComment = {fg = sunflower.green},
        TelescopeResultsSpecialComment = {fg = sunflower.gray},
        TelescopeResultsDiffChange = {fg = sunflower.yellow, style = 'reverse'},
        TelescopeResultsDiffAdd = {fg = sunflower.green},
        TelescopeResultsDiffDelete = {fg = sunflower.red, style = 'reverse'},
        TelescopeResultsDiffUntracked = {fg = sunflower.disabled},

        -- NvimTree
        NvimTreeRootFolder = {fg = sunflower.blue, style = 'bold'},
        NvimTreeGitDirty = {fg = sunflower.yellow},
        NvimTreeGitNew = {fg = sunflower.green},
        NvimTreeImageFile = {fg = sunflower.yellow},
        NvimTreeExecFile = {fg = sunflower.green},
        NvimTreeSpecialFile = {fg = sunflower.purple, style = 'underline'},
        NvimTreeFolderName = {fg = sunflower.paleblue},
        NvimTreeEmptyFolderName = {fg = sunflower.disabled},
        NvimTreeFolderIcon = {fg = sunflower.purple},
        NvimTreeIndentMarker = {fg = sunflower.disabled},
        NvimTreeLspDiagnosticsError = {fg = sunflower.error},
        NvimTreeLspDiagnosticsWarning = {fg = sunflower.yellow},
        NvimTreeLspDiagnosticsInformation = {fg = sunflower.paleblue},
        NvimTreeLspDiagnosticsHint = {fg = sunflower.purple},
        NvimTreeOpenedFile = {fg = sunflower.orange, style = 'bold'},
        NvimTreeGitDeleted = {fg = sunflower.orange},
        NvimTreeGitStaged = {fg = sunflower.orange},
        NvimTreeGitMerge = {fg = sunflower.blue},
        NvimTreeGitRenamed = {fg = sunflower.pink},
        NvimTreeWindowPicker = {
            fg = sunflower.gray,
            bg = sunflower.blue,
            style = 'bold'
        },
        NvimTreeSymlink = {fg = sunflower.orange, style = 'bold'},
        NvimTreeVertSplit = {fg = sunflower.bg},
        NvimTreeStatusLine = {fg = sunflower.fg, bg = sunflower.bg},
        NvimTreeStatusLineNC = {
            fg = sunflower.darkblue,
            bg = sunflower.disabled
        },
        NvimTreeFileNew = {fg = sunflower.green},
        NvimTreeFileMerge = {fg = sunflower.blue},
        NvimTreeOpenedFolderName = {fg = sunflower.blue},
        NvimTreeFileDirty = {fg = sunflower.yellow},
        NvimTreeNormal = {fg = sunflower.fg, bg = sunflower.bg},
        NvimTreeFileRenamed = {fg = sunflower.pink},
        NvimTreeCursorColumn = {fg = sunflower.cursor, style = 'reverse'},
        NvimTreeCursorLine = {fg = sunflower.purple, style = 'reverse'},
        NvimTreeFileDeleted = {fg = sunflower.orange},
        NvimTreePopup = {fg = sunflower.fg, bg = sunflower.bg},
        NvimTreeGitIgnored = {fg = sunflower.green},
        NvimTreeEndOfBuffer = {fg = sunflower.disabled},
        NvimTreeFileStaged = {fg = sunflower.orange},

        -- LspSaga
        LspSagaFinderSelection = {fg = sunflower.green},
        LspFloatWinNormal = {bg = sunflower.purple},
        LspFloatWinBorder = {fg = sunflower.purple},
        LspSagaBorderTitle = {fg = sunflower.cyan},
        LspSagaHoverBorder = {fg = sunflower.paleblue},
        TargetWord = {fg = sunflower.cyan},
        ReferencesCount = {fg = sunflower.purple},
        DefinitionCount = {fg = sunflower.purple},
        TargetFileName = {fg = sunflower.green},
        DefinitionIcon = {fg = sunflower.blue},
        ReferencesIcon = {fg = sunflower.blue},
        ProviderTruncateLine = {fg = sunflower.black},
        SagaShadow = {fg = sunflower.black},
        DiagnosticTruncateLine = {fg = sunflower.fg},
        DiagnosticError = {fg = sunflower.error},
        DiagnosticWarning = {fg = sunflower.yellow},
        DiagnosticInformation = {fg = sunflower.paleblue},
        DiagnosticHint = {fg = sunflower.purple},
        DefinitionPreviewTitle = {fg = sunflower.green, style = 'bold'},
        LspSagaShTruncateLine = {fg = sunflower.black},
        LspSagaDocTruncateLine = {fg = sunflower.black},
        LineDiagTuncateLine = {fg = sunflower.gray},
        LspSagaCodeActionTitle = {fg = sunflower.paleblue},
        LspSagaCodeActionTruncateLine = {fg = sunflower.black},
        LspSagaCodeActionContent = {fg = sunflower.purple},
        LspSagaRenamePromptPrefix = {fg = sunflower.green},
        LspSagaRenameBorder = {fg = sunflower.green},
        LspSagaHoverBorder = {fg = sunflower.paleblue},
        LspSagaSignatureHelpBorder = {fg = sunflower.pink},
        LspSagaCodeActionBorder = {fg = sunflower.blue},
        LspSagaAutoPreview = {fg = sunflower.pink},
        LspSagaDefPreviewBorder = {fg = sunflower.green},
        LspLinesDiagBorder = {fg = sunflower.yellow},

        -- Indent Blankline
        IndentBlanklineChar = {fg = sunflower.paleblue},
        IndentBlanklineSpaceChar = {fg = sunflower.paleblue},
        IndentBlanklineSpaceCharBlankline = {fg = sunflower.paleblue},
        IndentBlanklineContextChar = {fg = sunflower.cyan}
    }

    return plugins
end

return theme
