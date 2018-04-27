cd ~
git clone https://github.com/luckytoilet/bai-vimrc
mv bai-vimrc/.vimrc .vimrc
mv bai-vimrc/.tmux.conf .tmux.conf
mkdir .vim
cd ~/.vim
git clone https://github.com/jlanzarotta/bufexplorer
mv bufexplorer/plugin/ .
rm -rf bufexplorer/
git clone https://github.com/scrooloose/nerdtree
mv nerdtree/autoload/ .
mv nerdtree/doc/ .
mv nerdtree/lib/ .
mv nerdtree/nerdtree_plugin/ .
mv nerdtree/syntax/ .
rsync -a nerdtree/plugin/ plugin/
rm -rf nerdtree/
git clone https://github.com/morhetz/gruvbox
mv gruvbox/colors/ .
rsync -a gruvbox/autoload/ autoload/
rm -rf gruvbox
git clone https://github.com/altercation/vim-colors-solarized
rsync -a vim-colors-solarized/autoload/ autoload/
rsync -a vim-colors-solarized/colors/ colors/
rm -rf vim-colors-solarized
cd ~
rm -rf bai-vimrc/

