cd ~
git clone https://github.com/luckytoilet/bai-vimrc
mv bai-vimrc/.vimrc .vimrc
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
cd ~
rm -rf bai-vimrc/

