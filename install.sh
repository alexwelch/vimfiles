#!/usr/bin/env bash
default_bundles=(
  Command-T
  ack.vim
  actionscript.vim
  applescript.vim
  browser-refresh.vim
  cocoa.vim
  gist-vim
  jade.vim
  json.vim
  markdown-preview.vim
  nerdcommenter
  nerdtree
  processing.vim
  rvm.vim
  snipmate.vim
  statusline
  syntastic
  taglist.vim
  vim-cucumber
  vim-fugitive
  vim-haml
  vim-javascript
  vim-markdown
  vim-rails
  vim-repeat
  vim-ruby
  vim-supertab
  vim-unimpaired
  yankring
)

echo "Creating directories..."
mkdir -p home/.vim/bundle
mkdir -p home/.vim/snippets
mkdir -p home/.vim/tmp/swap
mkdir -p home/.vim/tmp/yankring
mkdir -p home/.vim/spell

echo "Setting up default vimrc.local..."
cp templates/.vimrc.local.example home/.vimrc.local

echo "Initializing submodules..."
git submodule init
git submodule update
git submodule foreach git checkout master
git submodule foreach git clean -f

echo "Symlinking default bundles..."
for i in "${default_bundles[@]}"; do
  ln -s home/.vim/bundle_storage/$i home/.vim/bundle/$i
done


echo "Symlinking default snippets..."
for f in `ls home/.vim/snippets_storage/`; do
  ln -s home/.vim/snippets_storage/$f home/.vim/snippets/$f
done
# Make a hard copy of css for scss
ln -s home/.vim/snippets_storage/css.snippets home/.vim/snippets/scss.snippets

echo ""
echo "*** Install Complete ***"
echo "--------------------------------------------------"
echo "Run the following command to symlink your castle:"
echo "homesick symlink name-of-your-castle"
echo "--------------------------------------------------"

