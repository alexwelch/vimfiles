# F/ Vim Configuration

The default configuration files for Vim used at F/. Tuned to play nice with [MacVim][macvim] but works with most \*nix environments. Setup using [homesick][homesick] for that symlinkn' goodness.


## To Get The Full Effect

F/ peops, double check, but you most likely already have the basic requirements installed on your machine.

- [Homebrew][homebrew] - `ruby -e "$(curl -fsSL https://gist.github.com/raw/323731/install_homebrew.rb)"`
- [MacVim][macvim] - `brew install macvim`
- [Homesick][homesick] - `gem install homesick`
- [node.js][node] - `brew install node`

[MacVim][macvim] is not a requirement as the majority of the files work in most \*nix environments including Terminal. It's recommended to use [Homebrew's][homebrew] package of [MacVim][macvim], as it compiles at 64 bit with Ruby, Python, Perl, installs the command line link `mvim`, plus a bunch of other goodness. [Homesick][homesick] is required for easy management of dot files with the repository. [node.js][node] is recommended for allowing the [syntastic][syntastic] plug-in to run [JSLint][jslint] on your JavaScript files.


## Installation

To install the files and default configuration run the following:

    homesick clone git@github.com:factorylabs/vimfiles.git
    cd ~/.homesick/repos/vimfiles
    bash install.sh
    homesick symlink vimfiles -f

\* If you don't have commit rights use `homesick clone https://github.com/factorylabs/vimfiles.git`

This will install the default configuration files/directories, submodules, and create symbolic links for bundles and snippets. Most of the heavy lifting is done by the [install script][install.sh].

At this point you should have a default setup ready to rock. You're going to want to tune it a bit to your environment, so go forth and "Pimp Your Ride".


## Pimp Your Ride

The `install.sh` script created a `.vimrc.local` file. This stores local configurations based on the user's needs, it is loaded after the `.vimrc` file. Anything created in `.vimrc.local` overrides settings set in `.vimrc`. This file is ignored and not checked back into the repository. It's recommended you keep a backup of this somewhere.

You'll want to tune a few settings right off the bat. Open the `.vimrc.local` file (in Vim type `,evl` a mnemonic is "*edit vimrc local*").

1. Uncomment `g:yankring_history_dir` and optionally change it's path, otherwise `yankring` will save it's history in a file in your `$HOME` directory
- Optional, point `g:MarkdownPreviewUserStyles` to the directory where your user specific style sheets for the markdown previewer reside. If your an F/ peop, you can clone the repository for [F/ Markdown Themes][fmd-themes] and gain templates and style sheets to keep you out of MS Word.
- Set the default browser by changing `g:RefreshRunningBrowserDefault`. Use "chrome", "safari", or "firefox"
- Give yourself a signature with `g:snips_author` by including your name for various [snipmate][snipmate] snippets
- Optionally uncomment one of the `colorschemes`, there are 4 included as described below, the default is `colorblind`
- It's recommended to uncomment the entire conditional under *User GUI specific settings*. We roll with the [custom font MesloGM][MesloGM] at 12px. You'll need to download and install it, otherwise roll with Monaco or something if you want to go blind. If you want to set a transparency, you'll need to enable *Use experimental renderer* in MacVim's preferences -> Advanced settings. The primary reason for uncommenting this conditional is, you'll find certain plug-ins need to be disabled or have certain settings applied to work across MacVim and various \*nix environments.

You can apply custom key bindings in `.vimrc.local`, configure plug-ins, or override default settings.


## Updating

Submodule plug-ins generate `doc/tag` files associated with help documents every time Vim is launched. This creates conflicts associated with pulling, updating or committing changes back to the main repository. It's necessary to clean these out before running any pulls or commits.

There are two shell scripts included to help in this process [clean.sh][clean.sh] and [update.sh][update.sh].


### Updating From The F/ Repository

To update from the latest changes in the F/ repository run the following:

1. Quit out of Vim
- `bash clean.sh`
- `git stash` or `git add` any updates from your environment spit out by the `clean.sh` call to `git status`
- `git pull --rebase`

Commit your changes back up to the repository.


### Updating Submodules

To pull upstream changes for all of the submodules run the following:

1. Quit out of Vim
- `bash update.sh`
- `git stash` or `git add` any updates from your environment spit out by the `clean.sh` call to `git status`
- `git pull --rebase`

Commit your changes back up to the repository. F/ will run this script once a week to keep the submodules as up to date as possible.


## Plug-Ins

Plug-ins are managed using [pathogen][pathogen]. All submodule plug-ins are stored in the `bundle_storage` directory and are not available to Vim until they are symlinked to the `bundle` directory. The `bundle` directory is ignored by the repository allowing custom configurations on a per install basis. To activate a plug-in run:

    ln -s ~/path/to/vimfiles/bundle_storage/bundle-name ~/path/to/vimfiles/bundle/bundle-name

You'll need to restart Vim for the changes to take effect.


### Adding New Plug-Ins As Submodules

New plug-ins need to be added to the `bundle_storage` directory and should be treated as submodules. To add a new one run:

    git submodule add <remote_repository> <home/.vim/bundle_storage/bundle-name>
    git submodule init
    git submodule update
    ln -s ~/path/to/vimfiles/bundle_storage/bundle-name ~/path/to/vimfiles/bundle/bundle-name

Test it out and if it's a keeper, add it to the repository, add it to the list below with a quick description and tell the world about it's greatness.

[Vim Scripts][vim-scripts] has an enormous amount of repositories for all sorts of plug-ins. However, if the original author has their own github repository, try to clone from there instead.


### Removing Submodules

   1. Delete the relevant line from the `.gitmodules` file
   - Delete the relevant section from `.git/config`
   - Run `git rm --cached path_to_submodule` (**no trailing slash!!**)
   - Remove the directory from `bundle_storage`
   - Remove the symbolic link from `bundle`
   - Remove any descriptions from the `README.md` file


### Default Plug-Ins

The [install script][install.sh] created initial symbolic links for the plug-ins listed below. These are primarily file type oriented plus a few must haves. You can disable any of these by removing the symbolic link, but it would be a lot cooler if you didn't.

- [ack.vim](https://github.com/mileszs/ack.vim/blob/master/doc/ack.txt)
- [actionscript.vim](https://github.com/vim-scripts/actionscript.vim--Leider)
- [applescript.vim](https://github.com/vim-scripts/applescript.vim)
- [browser-refresh.vim](https://github.com/mkitt/browser-refresh.vim/blob/master/doc/browser-refresh.txt)
- [cocoa.vim](https://github.com/msanders/cocoa.vim/blob/master/doc/cocoa.txt)
- [Command-T](http://www.url.com/)
- [gist-vim](https://github.com/mattn/gist-vim)
- [jade.vim](https://github.com/vim-scripts/jade.vim)
- [json.vim](https://github.com/vim-scripts/JSON.vim)
- [markdown-preview.vim](https://github.com/mkitt/markdown-preview.vim/blob/master/doc/markdown-preview.txt)
- [nerdcommenter](https://github.com/scrooloose/nerdcommenter/blob/master/doc/NERD_commenter.txt)
- [nerdtree](https://github.com/scrooloose/nerdtree/blob/master/doc/NERD_tree.txt)
- [processing.vim](https://github.com/vim-scripts/Processing)
- [rvm.vim](https://github.com/csexton/rvm.vim)
- [snipmate.vim](https://github.com/msanders/snipmate.vim/blob/master/doc/snipMate.txt)
- [statusline](https://github.com/factorylabs/vimfiles/blob/master/home/.vim/bundle_storage/statusline/doc/statusline.txt)
- [syntastic](https://github.com/scrooloose/syntastic/blob/master/doc/syntastic.txt)
- [taglist.vim](https://github.com/vim-scripts/taglist.vim/blob/master/doc/taglist.txt)
- [vim-cucumber](https://github.com/tpope/vim-cucumber)
- [vim-fugitive](https://github.com/tpope/vim-fugitive/blob/master/doc/fugitive.txt)
- [vim-haml](https://github.com/tpope/vim-haml)
- [vim-javascript](https://github.com/pangloss/vim-javascript)
- [vim-markdown](https://github.com/tpope/vim-markdown)
- [vim-rails](https://github.com/tpope/vim-rails/blob/master/doc/rails.txt)
- [vim-ruby](https://github.com/vim-ruby/vim-ruby/tree/master/doc)
- [vim-supertab](https://github.com/tsaleh/vim-supertab/blob/master/doc/supertab.txt)
- [vim-unimpaired](https://github.com/tpope/vim-unimpaired/blob/master/doc/unimpaired.txt)
- [yankring](https://github.com/chrismetcalf/vim-yankring/blob/master/doc/yankring.txt)


### Additional Plug-Ins

These are the additional plug-ins included, but are not required. They are not linked to the `bundle` directory out of the box. If adding any of these, make sure to read the docs on their usage and what variables/settings may be required in `.vimrc.local`

- [argtextobj.vim](https://github.com/vim-scripts/argtextobj.vim) - Motion commands for manipulating function arguments \*\*
- [autocomplpop.vim](https://github.com/vim-scripts/AutoComplPop/blob/master/doc/acp.txt) - Live completion as you type, this can slow Vim down, but is useful in certain situations
- [autocorrect.vim](https://github.com/vim-scripts/autocorrect.vim) - Corrects misspellings as you type i.e. teh -> the \*\*
- [bufkill.vim](https://github.com/vim-scripts/bufkill.vim) - Unload, delete or wipe a buffer
- [camelcasemotion](https://github.com/vim-scripts/camelcasemotion/blob/master/doc/camelcasemotion.txt) - Motion commands for moving between camelCase or words\_with\_underscores \*\*
- [colorsel.vim](https://github.com/vim-scripts/colorsel.vim/blob/master/doc/colorsel.txt) - Interactive RGB/HSV color selector
- [delimitMate.vim](https://github.com/vim-scripts/delimitMate.vim/blob/master/doc/delimitMate.txt) - Automatic closing of quotes, parenthesis, brackets, etc. \*\*
- [gundo](https://github.com/vim-scripts/Gundo/blob/master/doc/gundo.txt) - Graph Vim's undo tree so it is actually usable
- [html-autoclose.vim](https://github.com/vim-scripts/HTML-AutoCloseTag) - Automatically closes HTML tags, doesn't play well with the delimitMate plugin
- [indexed-search.vim](https://github.com/vim-scripts/IndexedSearch) - Adds visual cues when performing searches within a file \*\*
- [lustyjuggler](https://github.com/vim-scripts/LustyJuggler) - Enables a window for navigating through open buffers
- [specky](https://github.com/vim-scripts/Specky/blob/master/doc/specky.txt) - Plug-in for testing Ruby code with RSpec
- [tabular](https://github.com/godlygeek/tabular/blob/master/doc/Tabular.txt) - Configurable, flexible, intuitive text aligning \*\*
- [tailminusf](https://github.com/vim-scripts/TailMinusF/blob/master/doc/tailminusf.txt) - Watch the contents of a file in real time
- [vim-ragtag](https://github.com/tpope/vim-ragtag/blob/master/doc/ragtag.txt) - Ghetto XML/HTML mappings
- [vim-repeat](https://github.com/tpope/vim-repeat) - Enable repeating commands mapped to "." \*\*
- [vim-speeddating](https://github.com/tpope/vim-speeddating/blob/master/doc/speeddating.txt) - Use CTRL-A/CTRL-X to increment dates, times, and more
- [vim-surround](https://github.com/tpope/vim-surround/blob/master/doc/surround.txt) - Delete, change, and add "surroundings" i.e. parentheses, quotes, and HTML tags \*\*

**\*\* - Recommended!**


## Snippets

By default all of the snippet files stored within `snippets_storage` are symlinked into the `snippets` directory. These cover most of the languages used at F/. To see the available snippets for a given file type hit `<F5>`, a snippet is triggered using `<control>` `<space>`.

Certain file types like JavaScript have hundreds of snippets based on the native language and various libraries. This can become unmanageable pretty quickly. The solution is to breakout specific libraries into their own files. For example `javascript-jasmine.snippets` where it needs to be named as `language-library.snippets`. Since snippets are saved in the `snippets_storage` directory, you can be selective about what gets a symbolic link within the `snippets` directory.

If you are working in a project that includes jQuery, you would only have symbolic links created for `javascript.snippets`, `javascript-jasmine.snippets`, and `javascript-jquery.snippets`. Another project that uses [node.js][node], you could delete the symbolic link to `javascript-jquery.snippets` and add in `javascript-node.snippets` instead. This will give you a more manageable list of snippets to work with. By default, all snippets are included at installation, you'll want to tune these based on your needs.

To learn more about [snipmate][snipmate] and creating snippets, type `:h snipmate`


## Syntax Checkers

The configuration uses [syntastic][syntastic] quite heavily, most of it is out of the box. Buffers are checked after each save.

The JavaScript syntax checker runs off of [nodelint][nodelint] ([node][node] + [JSLint][jslint]) instead of jsl which is included with [syntastic][syntastic]. The submodule to [nodelint][nodelint] is under `.vim/syntax_checkers/compilers/`. Also under this directory is [nodelint-config][nodelint-config]. This is the default global settings for all JavaScript files and conforms to the F/ configuration. It's possible, with a global variable, to override this location. In your `.vimrc.local` file.

`let g:NodelintConfig = 'path/to/your/config.js'`

This will override the one in `.vim/syntax_checkers/compilers/nodelint-config`. There is one more level of overriding you can perform, and this is at the project level. At the root level of your project, stick a file in there with the name `nodelint-config.js` and add the settings required by your project. In order for this to work, within Vim, you'll need to set the project root directory as the `cwd` for the Vim session.

If you don't have `node` installed, a simple `brew install node` does the trick.

There is also an Objective C checker included. This uses the `gcc` and requires the `cwd` to have the `.xcodeproj` file in it.

To learn more about [syntastic][syntastic] and syntax checkers, type `:h syntastic`


## Editor Themes

Themes included with this configuration:

1. `colorblind`: Black background, super vibrant colors
- `snowblind`: White background, vibrant colors
- `cataracts`: Grey background with muted colors
- `bloodshot`: Similar to colorblind but with muted colors

The color themes have been designed with similarities in the syntax settings. Jumping between multiple languages should be easy on the mind and the eyes. Be adventurous and mix it up once in a while.]

**Most themes use the custom [MesloGM font](https://github.com/andreberg/Meslo-Font). Download, install and live the dream.**

Feel free to add more themes, but try and follow the logic already setup. Bonus points if you deliver a Terminal theme to go along with it.


## Tips


### FCheat

Within Vim type `:h fcheat` to view key and leader bindings for the F/ configuration


### Turn Caps Lock Into The Control Key

The control key is in an awkward position and the caps lock key is basically useless. It's right there in the home row, so you might as well put it to good use.

1. Open up System Preferences
- Select `Keyboard`
- Select `Modifier Keys`
- From the drop down, select `^ Control` under the `Caps Lock` setting
- In the `Select Keyboard` drop down, you'll want to set it for both internal and external keyboards


### Alias MacVim

1. Launch [MacVim][macvim] from Terminal by typing `mvim` and hitting enter
- Right click the logo in your dock and select `Options > Show in Finder`
- Create an alias of `MacVim.app` and drop it in the `/Applications/` directory (this will allow it to be found by Spotlight)
- Optionally choose to keep the icon in your dock `Options > Keep in Dock`


### Working With Your Own Submodules

In order to keep your personal submodules available to forks but allow commits back to the upstream master repository from within the submodule:

1. Create the repository for your bundle within git
-  Then from the `vimfiles` directory add the submodule as you would any other submodule
-  Within your newly created submodule, create a remote reference to the upstream master repository
-  Make changes to the submodule and push updates back to the remote upstream master
-  Then whenever you pull updates to all of your submodules, you as well as everyone else should get the changes

Here is an example:

    cd ~/.homesick/repos/vimfiles/
    git submodule add git://github.com/username/submodule-name.vim.git home/.vim/bundle_storage/submodule-name.vim
    cd home/.vim/bundle_storage/submodule-name.vim/
    git remote add push git@github.com:username/submodule-name.vim.git
    git submodule init
    git submodule update
    ln -s ~/path/to/vimfiles/bundle_storage/submodule-name.vim ~/path/to/vimfiles/bundle/submodule-name.vim

Then whenever you make changes to the submodule:

    cd ~/.homesick/repos/vimfiles/home/.vim/bundle_storage/submodule-name.vim/
    git push push master

This allows you to make changes directly in your submodule, see the effects and push the changes back without maintaining multiple repositories and linking them back and forth. [Defunkt][defunkt] has a good article about [working with submodules][defunkt-subs].


## License and Contributions

All licensing for the Bundles/Plug-ins should be found in their respective repositories. Anything written by F/ is of course open source through MIT. While contributions are welcome, you're probably better off forking and tuning it to your own machine.

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
[vim-scripts]: https://github.com/vim-scripts
[install.sh]: https://github.com/factorylabs/vimfiles/blob/master/install.sh
[update.sh]: https://github.com/factorylabs/vimfiles/blob/master/update.sh
[clean.sh]: https://github.com/factorylabs/vimfiles/blob/master/clean.sh
[nodelint]: http://github.com/tav/nodelint
[nodelint-config]: https://github.com/factorylabs/nodelint-config
[jslint]: http://www.jslint.com/lint.html
[syntastic]: https://github.com/scrooloose/syntastic
[snipmate]: https://github.com/msanders/snipmate.vim
[pathogen]: https://github.com/tpope/vim-pathogen
[fmd-themes]: https://github.com/factorylabs/fmd-themes
[MesloGM]: https://github.com/andreberg/Meslo-Font
[defunkt]: http://github.com/defunkt
[defunkt-subs]: http://github.com/guides/developing-with-submodules
