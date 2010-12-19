
hi clear
set background=dark

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "colorblind"

" Colorblind Palette
" -----------------------------------------------------------------------------
" COLOR                                 BRIGHT/BOLD
" -----------------------------------------------------------------------------
" Black        #000000  ---         |   White            #FFFFFF  ---
" Red          #FF0000  Error       |   Light Red        #E52253  Include/Exception
" Green        #3D9C00  DString     |   Light Green      #96FF32  String
" Brown        #FF9600  Function    |   Yellow           #FFCD00  Label
" Blue         #0080FF  Structure   |   Light Blue       #96CDFF  Keyword
" Magenta      #FF00FF  SpComment   |   Light Magenta    #FF80FF  Type
" Cyan         #00FFFF  Boolean     |   Light Cyan       #782DBD  Comment
" Gray         #555555  ---         |   Light Gray       #999999  Number
" -----------------------------------------------------------------------------

hi Normal                           guifg=#FFFFFF   guibg=#000000 gui=NONE      ctermfg=White    ctermbg=NONE   cterm=NONE
hi Cursor                           guifg=NONE      guibg=#FF00FF gui=NONE      ctermfg=NONE     ctermbg=Magenta cterm=NONE
hi Visual                           guifg=NONE      guibg=#1B2B66 gui=NONE      ctermfg=NONE     ctermbg=NONE   cterm=NONE
hi CursorLine                       guifg=NONE      guibg=#1C1C1C gui=NONE      ctermfg=NONE     ctermbg=NONE   cterm=NONE
hi CursorColumn                     guifg=NONE      guibg=#1C1C1C gui=NONE      ctermfg=NONE     ctermbg=NONE   cterm=NONE
hi LineNr                           guifg=#555555   guibg=NONE    gui=NONE      ctermfg=Gray     ctermbg=NONE   cterm=NONE
hi VertSplit                        guifg=#000000   guibg=#333333 gui=NONE      ctermfg=Black    ctermbg=Gray   cterm=NONE
hi MatchParen                       guifg=#FF0000   guibg=NONE    gui=NONE      ctermfg=Red      ctermbg=NONE   cterm=NONE
hi StatusLine                       guifg=#FFFFFF   guibg=#0080FF gui=bold      ctermfg=White    ctermbg=Blue   cterm=NONE
hi StatusLineNC                     guifg=#FFFFFF   guibg=#0080FF gui=NONE      ctermfg=White    ctermbg=Blue   cterm=NONE
hi Pmenu                            guifg=#000000   guibg=#999999 gui=NONE      ctermfg=Black    ctermbg=Gray   cterm=bold
hi PmenuSel                         guifg=#FFFFFF   guibg=#0080FF gui=NONE      ctermfg=White    ctermbg=Blue   cterm=NONE
hi IncSearch                        guifg=NONE      guibg=#1B2B66 gui=NONE      ctermfg=NONE     ctermbg=Blue   cterm=bold
hi Search                           guifg=NONE      guibg=#1B2B66 gui=NONE      ctermfg=NONE     ctermbg=Blue   cterm=bold
hi Directory                        guifg=#96CDFF   guibg=NONE    gui=NONE      ctermfg=Blue     ctermbg=NONE   cterm=bold
hi Folded                           guifg=#782DBD   guibg=NONE    gui=NONE      ctermfg=Cyan     ctermbg=NONE   cterm=bold
hi ErrorMsg                         guifg=#FF0000   guibg=NONE    gui=NONE      ctermfg=Red      ctermbg=NONE   cterm=NONE
hi WarningMsg                       guifg=#FFCD00   guibg=NONE    gui=NONE      ctermfg=Yellow   ctermbg=NONE   cterm=bold
hi NonText                          guifg=#333333   guibg=NONE    gui=NONE      ctermfg=Gray     ctermbg=NONE   cterm=NONE
hi SpecialKey                       guifg=#333333   guibg=NONE    gui=NONE      ctermfg=Gray     ctermbg=NONE   cterm=NONE
hi Title                            guifg=#FFFFFF   guibg=NONE    gui=NONE      ctermfg=White    ctermbg=NONE   cterm=NONE
hi SpellBad                         guifg=NONE      guibg=NONE    gui=undercurl ctermfg=NONE     ctermbg=NONE   cterm=underline guisp=Magenta

hi Boolean                          guifg=#00FFFF   guibg=NONE  gui=NONE        ctermfg=Cyan     ctermbg=NONE   cterm=NONE
hi Character                        guifg=#FF9600   guibg=NONE  gui=NONE        ctermfg=Brown    ctermbg=NONE   cterm=NONE
hi Comment                          guifg=#782DBD   guibg=NONE  gui=NONE        ctermfg=Cyan     ctermbg=NONE   cterm=bold
hi Conditional                      guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi Constant                         guifg=#FF0000   guibg=NONE  gui=NONE        ctermfg=Red      ctermbg=NONE   cterm=NONE
hi Define                           guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi Delimiter                        guifg=#FF9600   guibg=NONE  gui=NONE        ctermfg=Brown    ctermbg=NONE   cterm=NONE
hi Error                            guifg=#FF0000   guibg=NONE  gui=NONE        ctermfg=Red      ctermbg=NONE   cterm=NONE
hi Exception                        guifg=#E52253   guibg=NONE  gui=NONE        ctermfg=Red      ctermbg=NONE   cterm=bold
hi Float                            guifg=#999999   guibg=NONE  gui=NONE        ctermfg=Gray     ctermbg=NONE   cterm=bold
hi Function                         guifg=#FF9600   guibg=NONE  gui=NONE        ctermfg=Brown    ctermbg=NONE   cterm=NONE
hi Identifier                       guifg=#FF80FF   guibg=NONE  gui=NONE        ctermfg=Magenta  ctermbg=NONE   cterm=bold
hi Include                          guifg=#E52253   guibg=NONE  gui=italic      ctermfg=Red      ctermbg=NONE   cterm=bold
hi Keyword                          guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi Label                            guifg=#FFCD00   guibg=NONE  gui=NONE        ctermfg=Yellow   ctermbg=NONE   cterm=bold
hi Macro                            guifg=#0080FF   guibg=NONE  gui=italic      ctermfg=Blue     ctermbg=NONE   cterm=NONE
hi Number                           guifg=#999999   guibg=NONE  gui=NONE        ctermfg=Gray     ctermbg=NONE   cterm=bold
hi Operator                         guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi PreCondit                        guifg=#3D9C00   guibg=NONE  gui=italic      ctermfg=Green    ctermbg=NONE   cterm=NONE
hi PreProc                          guifg=#FFCD00   guibg=NONE  gui=NONE        ctermfg=Yellow   ctermbg=NONE   cterm=bold
hi Repeat                           guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi Special                          guifg=#FFFFFF   guibg=NONE  gui=italic      ctermfg=White    ctermbg=NONE   cterm=NONE
hi SpecialComment                   guifg=#FF00FF   guibg=NONE  gui=NONE        ctermfg=Magenta  ctermbg=NONE   cterm=NONE
hi Statement                        guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi StorageClass                     guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi String                           guifg=#96FF32   guibg=NONE  gui=italic      ctermfg=Green    ctermbg=NONE   cterm=bold
hi Structure                        guifg=#0080FF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=NONE
hi Tag                              guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi Todo                             guifg=#FF0000   guibg=NONE  gui=inverse     ctermfg=Red      ctermbg=NONE   cterm=bold
hi Type                             guifg=#FF80FF   guibg=NONE  gui=NONE        ctermfg=Magenta  ctermbg=NONE   cterm=bold
hi Underlined                       guifg=NONE      guibg=NONE  gui=underline   ctermfg=NONE     ctermbg=NONE   cterm=NONE

" Language Specific Overrides
" -----------------------------------------------------------------------------
hi def link rubyInterpolationDelimiter  Error
hi def link rubyClass               Character
hi def link rubyFunction            Label
hi def link rubySymbol              Structure
hi def link rubyConstant            Error
hi def link rubyStringDelimiter     String
hi def link rubyBlockParameter      Number
hi def link rubyInstanceVariable    SpecialComment
hi def link rubyInclude             Label
hi def link rubyGlobalVariable      Number
hi def link rubyRegexp              Error
hi def link rubyRegexpDelimiter     Error
hi def link rubyEscape              Character
hi def link rubyControl             Keyword
hi def link rubyClassVariable       Structure
hi def link rubyOperator            Keyword
hi def link rubyException           Label
hi def link rubyPseudoVariable      Type
hi def link rubyRailsRenderMethod   Label
hi def link rubyRailsMethod         Character
hi def link rubyRailsUserClass      Include
hi rubyRailsARAssociationMethod     guifg=#FF9600   guibg=NONE  gui=italic      ctermfg=Brown    ctermbg=NONE   cterm=NONE
hi rubyRailsARMethod                guifg=#FF9600   guibg=NONE  gui=italic      ctermfg=Brown    ctermbg=NONE   cterm=NONE

hi def link cucumberTags            SpecialComment
hi def link cucumberScenario        Structure
hi def link cucumberThen            Label
hi def link cucumberWhen            Keyword
hi def link cucumberGiven           Type
hi def link cucumberScenarioOutline Error
hi def link cucumberBackground      Boolean
hi def link cucumberFeature         Error

hi def link htmlTag                 Number
hi def link htmlEndTag              Number
hi def link htmlTagName             Keyword
hi def link htmlArg                 Label
hi def link htmlSpecialChar         Error
hi def link htmlH1                  Keyword
hi def link htmlH2                  Keyword
hi def link htmlH3                  Keyword
hi def link htmlH4                  Keyword
hi def link htmlH5                  Keyword
hi def link htmlH6                  Keyword
hi htmlLink                         guifg=#00FFFF   guibg=NONE  gui=underline   ctermfg=Cyan     ctermbg=NONE   cterm=NONE
hi htmlItalic                       guifg=NONE      guibg=NONE  gui=italic      ctermfg=NONE     ctermbg=NONE   cterm=NONE
hi htmlBold                         guifg=NONE      guibg=NONE  gui=bold        ctermfg=NONE     ctermbg=NONE   cterm=NONE
hi htmlBoldItalic                   guifg=NONE      guibg=NONE  gui=bold,italic ctermfg=NONE     ctermbg=NONE   cterm=NONE

hi def link cssFunctionName         Structure
hi def link cssColor                SpecialComment
hi def link cssPseudoClassId        Character
hi def link cssClassName            Label
hi def link cssValueLength          Number
hi def link cssImportant            Structure
hi def link cssStringQQ             PreCondit
hi cssBraces                        guifg=#FFFFFF   guibg=NONE  gui=NONE        ctermfg=White    ctermbg=NONE   cterm=NONE
hi cssURL                           guifg=#00FFFF   guibg=NONE  gui=underline   ctermfg=Cyan     ctermbg=NONE   cterm=NONE
hi cssCommonAttr                    guifg=NONE      guibg=NONE  gui=NONE        ctermfg=NONE     ctermbg=NONE   cterm=NONE

hi def link hamlTag                 Number
hi def link hamlIdChar              Character
hi def link hamlId                  Character
hi def link hamlClassChar           Label
hi def link hamlClass               Label

hi def link sassIdChar              Character
hi def link sassId                  Character
hi def link sassClassChar           Label
hi def link sassClass               Label

hi def link javascriptNull          SpecialComment
hi def link javaScriptPrototype     Structure
hi def link javaScriptSpecial       Boolean
hi def link javaScriptGlobalObjects Include
hi def link javaScriptHtmlEvents    Structure
hi def link javaScriptStringD       PreCondit
hi javaScriptBraces                 guifg=NONE   guibg=NONE  gui=NONE        ctermfg=NONE    ctermbg=NONE   cterm=NONE

hi def link actionScriptStringD     PreCondit
hi def link actionScriptNumber      Number
hi def link actionScriptCase        Keyword
hi def link actionScriptArray       Keyword
hi def link actionScriptDate        Keyword
hi def link actionScriptMath        Keyword
hi def link actionScriptNumberObj   Keyword
hi def link actionScriptObjects     Type
hi def link as3Packages             Structure
hi def link as3Classes              Structure
hi def link as3Properties           Structure
hi def link as3Functions            Structure
hi def link as3Constants            Error
hi def link flash8Classes           Structure
hi def link flash8Properties        Structure
hi def link as3Errors               Label
hi def link as3Events               Label
hi def link actionScriptMethods     Label
hi actionScriptBraces               guifg=NONE   guibg=NONE  gui=NONE        ctermfg=NONE    ctermbg=NONE   cterm=NONE

hi def link markdownId              Type
hi def link markdownIdDeclaration   Type
hi def link markdownCodeDelimiter   Error
hi def link markdownLinkText        String

hi def link yamlKey                 Keyword
hi def link yamlAnchor              Number
hi def link yamlAlias               Number
hi yamlDocumentHeader               guifg=#96CDFF   guibg=NONE  gui=italic      ctermfg=Blue     ctermbg=NONE   cterm=bold

hi def link xmlTag                  Number
hi def link xmllEndTag              Number
hi def link xmlTagName              Keyword
hi def link xmlAttrib               Label
hi def link xmlAttribPunct          Label
hi def link xmlCdataStart           Character
hi def link xmlCdataEnd             Character
hi def link xmlCdataCdata           Structure

