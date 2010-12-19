"============================================================================
"File:        objc.vim
"Description: Syntax checking plugin for syntastic.vim using nodelint
"Maintainer:  Matthew Kitt <mk dot kitt at gmail dot com>
"License:     This program is free software. It comes without any warranty,
"             to the extent permitted by applicable law. You can redistribute
"             it and/or modify it under the terms of the Do What The Fuck You
"             Want To Public License, Version 2, as published by Sam Hocevar.
"             See http://sam.zoy.org/wtfpl/COPYING for more details.
"
"============================================================================
if exists('loaded_objc_syntax_checker')
  finish
endif

if !executable('gcc')
  finish
endif

" Requires the cwd to have the .xcodeproj in it.
function! SyntaxCheckers_objc_GetLocList()
  let s:project = fnamemodify(globpath(getcwd(), '*.xcodeproj'), ':t')
  if exists('s:project')
    let makeprg = 'xcodebuild -project ' . s:project
    let errorformat = '%f:%l: %#error: %m,%-G%.%#'
    return SyntasticMake({ 'makeprg': makeprg, 'errorformat': errorformat })
  endif
endfunction

