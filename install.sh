#!/usr/bin/env bash
echo -e "Setting up directories"
mkdir home/.vim/bundle
mkdir home/.vim/snippets
mkdir home/.vim/tmp
mkdir home/.vim/tmp/swap
mkdir home/.vim/tmp/yankring
mkdir home/.vim/spell
echo -e "Setting up local vimrc"
cp .vimrc.local.example home/.vimrc.local
echo -e "Initializing submodules"
git submodule init
git submodule update
git submodule foreach git checkout master
git submodule foreach git clean -f
git submodule foreach git pull --rebase
echo -e "Symlinking default bundles"
ln -s home/.vim/bundle_storage/Command-T home/.vim/bundle/Command-T
ln -s home/.vim/bundle_storage/ack.vim home/.vim/bundle/ack.vim
ln -s home/.vim/bundle_storage/actionscript.vim home/.vim/bundle/actionscript.vim
ln -s home/.vim/bundle_storage/applescript.vim home/.vim/bundle/applescript.vim
ln -s home/.vim/bundle_storage/browser-refresh.vim home/.vim/bundle/browser-refresh.vim
ln -s home/.vim/bundle_storage/cocoa.vim home/.vim/bundle/cocoa.vim
ln -s home/.vim/bundle_storage/gist-vim home/.vim/bundle/gist-vim
ln -s home/.vim/bundle_storage/jade.vim home/.vim/bundle/jade.vim
ln -s home/.vim/bundle_storage/json.vim home/.vim/bundle/json.vim
ln -s home/.vim/bundle_storage/markdown-preview.vim home/.vim/bundle/markdown-preview.vim
ln -s home/.vim/bundle_storage/nerdcommenter home/.vim/bundle/nerdcommenter
ln -s home/.vim/bundle_storage/nerdtree home/.vim/bundle/nerdtree
ln -s home/.vim/bundle_storage/processing.vim home/.vim/bundle/processing.vim
ln -s home/.vim/bundle_storage/rvm.vim home/.vim/bundle/rvm.vim
ln -s home/.vim/bundle_storage/snipmate.vim home/.vim/bundle/snipmate.vim
ln -s home/.vim/bundle_storage/statusline home/.vim/bundle/statusline
ln -s home/.vim/bundle_storage/syntastic home/.vim/bundle/syntastic
ln -s home/.vim/bundle_storage/taglist.vim home/.vim/bundle/taglist.vim
ln -s home/.vim/bundle_storage/vim-cucumber home/.vim/bundle/vim-cucumber
ln -s home/.vim/bundle_storage/vim-fugitive home/.vim/bundle/vim-fugitive
ln -s home/.vim/bundle_storage/vim-haml home/.vim/bundle/vim-haml
ln -s home/.vim/bundle_storage/vim-javascript home/.vim/bundle/vim-javascript
ln -s home/.vim/bundle_storage/vim-markdown home/.vim/bundle/vim-markdown
ln -s home/.vim/bundle_storage/vim-rails home/.vim/bundle/vim-rails
ln -s home/.vim/bundle_storage/vim-repeat home/.vim/bundle/vim-repeat
ln -s home/.vim/bundle_storage/vim-ruby home/.vim/bundle/vim-ruby
ln -s home/.vim/bundle_storage/vim-supertab home/.vim/bundle/vim-supertab
ln -s home/.vim/bundle_storage/vim-unimpaired home/.vim/bundle/vim-unimpaired
ln -s home/.vim/bundle_storage/yankring home/.vim/bundle/yankring
echo -e "Symlinking default snippets"
ln -s home/.vim/snippets_storage/_.snippets home/.vim/snippets/_.snippets
ln -s home/.vim/snippets_storage/c.snippets home/.vim/snippets/c.snippets
ln -s home/.vim/snippets_storage/cpp.snippets home/.vim/snippets/cpp.snippets
ln -s home/.vim/snippets_storage/css.snippets home/.vim/snippets/css.snippets
ln -s home/.vim/snippets_storage/css.snippets home/.vim/snippets/scss.snippets
ln -s home/.vim/snippets_storage/cucumber.snippets home/.vim/snippets/cucumber.snippets
ln -s home/.vim/snippets_storage/erlang.snippets home/.vim/snippets/erlang.snippets
ln -s home/.vim/snippets_storage/haml.snippets home/.vim/snippets/haml.snippets
ln -s home/.vim/snippets_storage/html.snippets home/.vim/snippets/html.snippets
ln -s home/.vim/snippets_storage/java.snippets home/.vim/snippets/java.snippets
ln -s home/.vim/snippets_storage/javascript.snippets home/.vim/snippets/javascript.snippets
ln -s home/.vim/snippets_storage/objc.snippets home/.vim/snippets/objc.snippets
ln -s home/.vim/snippets_storage/perl.snippets home/.vim/snippets/perl.snippets
ln -s home/.vim/snippets_storage/php.snippets home/.vim/snippets/php.snippets
ln -s home/.vim/snippets_storage/processing.snippets home/.vim/snippets/processing.snippets
ln -s home/.vim/snippets_storage/python.snippets home/.vim/snippets/python.snippets
ln -s home/.vim/snippets_storage/ruby.snippets home/.vim/snippets/ruby.snippets
ln -s home/.vim/snippets_storage/ruby-rails/ home/.vim/snippets/ruby-rails
ln -s home/.vim/snippets_storage/ruby-rspec/ home/.vim/snippets/ruby-rspec
ln -s home/.vim/snippets_storage/sh.snippets home/.vim/snippets/sh.snippets
ln -s home/.vim/snippets_storage/snippet.snippets home/.vim/snippets/snippet.snippets
ln -s home/.vim/snippets_storage/vim.snippets home/.vim/snippets/vim.snippets
ln -s home/.vim/snippets_storage/xml.snippets home/.vim/snippets/xml.snippets
ln -s home/.vim/snippets_storage/zsh.snippets home/.vim/snippets/zsh.snippets
echo -e "Initialization Complete"
echo -e "Run the following command to symlink your castle:"
echo -e "homesick symlink name-of-castle"

