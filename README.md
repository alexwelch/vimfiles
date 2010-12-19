# F/ Vim Configuration

The default configuration files for Vim used at F/. Tuned to play nice with \*nix environments, but primarily built for [MacVim][macvim]. Setup using [homesick][homesick] for that symlinkn' goodness.


## To Get The Full Effect

F/ peops, double check, but you most likely already have the basic requirements installed on your machine.

- [Homebrew][homebrew]: `ruby -e "$(curl -fsSL https://gist.github.com/raw/323731/install_homebrew.rb)"`
- [MacVim][macvim] `brew install macvim`
- [Homesick][homesick]: `gem install homesick`
- [node.js][node]: `brew install node`

[MacVim][macvim] is not a requirement as the majority of the files work in most \*nix environments including Terminal. It's recommended to use [Homebrew's][homebrew] package of [MacVim][macvim], as it compiles at 64 bit with Ruby, Python, Perl, installs the command line link `mvim`, plus a bunch of other goodness. [Homesick][homesick] is required for easy management of dot files with the repository. [node.js][node] is recommended for allowing the [syntastic][syntastic] plugin to run [JSLint][jslint] on your JavaScript files.


## Installation

To install the files and default configuration run the following:

- `homesick clone git@github.com:factorylabs/vimfiles.git` or without commit rights `homesick clone https://github.com/factorylabs/vimfiles.git`
- `cd ~/.homesick/repos/vimfiles`
- `bash install.sh`
- `homesick symlink vimfiles -f`

This will install the default configuration files, submodules, and symlinks bundles and snippets. Most of the heavy lifting is done by the [install script][install.sh]. It performs the following:

- Creates empty directories for tmp files, bundles and snippets
- Creates a `.vimrc.local` file off of a template for configurations tuned to your environment
- Runs `git submodule init` and `git submodule update` for all included submodules
- Creates symbolic links of the default bundles from `bundle_storage` -> `bundle`
- Creates symbolic links for the snippet files from `snippets_storage` -> `snippets`

At this point you should have a default setup ready to rock. You're going to want to tune it a bit to your environment, so go forth and "Pimp Your Ride".


## Pimp Your Ride

The `install.sh` script created a `.vimrc.local` file. This stores local configurations based on the machine running it, it is loaded after the `.vimrc` file. Anything set in `.vimrc.local` overrides properties set in `.vimrc`. This file is ignored and not checked back into the repository. It's recommended you keep a backup of this somewhere.

You'll want to setup a few properties right off the bat. Open the `.vimrc.local` (in MacVim type `,evl` a mnemonic is "edit vimrc local"). Uncomment and edit the following:

- Uncomment `g:yankring_history_dir` and optionally change it's path, otherwise `yankring` will save those files to your `$HOME` directory
- Optional, point `g:MarkdownPreviewUserStyles` to the directory where your user specific style sheets for the markdown previewer reside. If your an F/ peop, you can clone the repository for [F/ Markdown Themes][fmd-themes] and gain templates and style sheets to keep you out of MS Word.
- Set the default browser you use by changing `g:RefreshRunningBrowserDefault`. Available strings are "chrome", "safari", or "firefox"
- Give yourself a signature with `g:snips_author` by including your name for various [snipmate][snipmate] snippets
- Optionally uncomment one of the `colorschemes`, there are 4 included as described below, the default is `colorblind`
- It's recommended to uncomment the entire conditional under *User GUI specific settings*. We roll with the [custom font MesloGM][MesloGM] at 12px. You'll need to download and install it, otherwise roll with Monaco or something if you want to go blind. If you want to set a transparency, you'll need to enable *Use experimental renderer* in MacVim's preferences -> Advanced settings. The primary reason for uncommenting this conditional is, you'll find certain plugins you install will most likely need to be disabled or have certain settings applied to work across MacVim and various \*nix environments.

You can apply custom key bindings in `.vimrc.local`, configure plugins further based on your needs, or totally screw up everything based on your needs.


## Custom Bundles

Need to add information about symlinking bundles


### Default Bundles

- Command-T
- ack.vim
- actionscript.vim
- applescript.vim
- browser-refresh.vim
- cocoa.vim
- gist-vim
- jade.vim
- json.vim
- markdown-preview.vim
- nerdcommenter
- nerdtree
- processing.vim
- rvm.vim
- snipmate.vim
- statusline
- syntastic
- taglist.vim
- vim-cucumber
- vim-fugitive
- vim-haml
- vim-javascript
- vim-markdown
- vim-rails
- vim-repeat
- vim-ruby
- vim-supertab
- vim-unimpaired
- yankring

*Add Links and Basic Descriptions*


### Add On Bundles

- argtextobj.vim
- autocomplpop.vim
- autocorrect.vim
- bufkill.vim
- camelcasemotion
- colorsel.vim
- delimitMate.vim
- gundo
- html-autoclose.vim
- indexed-search.vim
- lustyjuggler
- specky
- tabular
- tailminusf
- vim-ragtag
- vim-speeddating
- vim-surround

*Add Links, Recomendations, and Basic Descriptions*


## Custom Snippets

Need to add information about symlinking snippets, what's included and so on...


## Editor Themes

Themes included with this configuration:

1. `colorblind`: Black background, super vibrant colors
- `snowblind`: White background, vibrant colors
- `cataracts`: Grey background with muted colors
- `bloodshot`: Similar to colorblind but with muted colors

The color themes have been designed with similarities in the syntax settings. Jumping between multiple languages should be easy on the mind and the eyes. Be adventurous and mix it up once in a while.

**Most themes use the custom [MesloGM font](https://github.com/andreberg/Meslo-Font). Download, install and live the dream.**

*Add information about updating existing color themes*

## Updating

*Need to add information about submodules, what to do before committing...*


### Best Practices

*Need to add information about how we handle changes*


## Tips

*Installing MacVim, handling your own plugins within an environment...*


## Roadmap

- Adding scripts for updating to the latest revisions
- Optional snippets for massive helpers i.e. JavaScript
- Autorefresh NerdTree
- F/ based Cheat Sheet


## License and Contributions 

All licensing for the Bundles/Plugins should be found in their respective repositories. Anything written by F/ is of course open source through MIT. While contributions are welcome, you're probably better off forking and tuning it to your own machine.

Copyright (c) 2011 by Factory Design Labs

Permission is hereby granted, free of charge, to any person 
obtaining a copy of this software and associated documentation 
files (the "Software"), to deal in the Software without 
restriction, including without limitation the rights to use, 
copy, modify, merge, publish, distribute, sublicense, and/or sell 
copies of the Software, and to permit persons to whom the 
Software is furnished to do so, subject to the following 
conditions:

The above copyright notice and this permission notice shall be 
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES 
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND 
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT 
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR 
OTHER DEALINGS IN THE SOFTWARE.


<!-- link ids -->
[macvim]: http://code.google.com/p/macvim/
[homebrew]: http://github.com/mxcl/homebrew
[homesick]: http://github.com/technicalpickles/homesick
[node]: http://nodejs.org/
[install.sh]: https://github.com/factorylabs/vimfiles/blob/master/install.sh
[jslint]: http://www.jslint.com/lint.html
[syntastic]: https://github.com/scrooloose/syntastic
[snipmate]: https://github.com/msanders/snipmate.vim
[fmd-themes]: https://github.com/factorylabs/fmd-themes
[MesloGM]: https://github.com/andreberg/Meslo-Font
