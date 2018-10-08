mkdir -p $(jupyter --data-dir)/nbextensions
cd $(jupyter --data-dir)/nbextensions
git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding
jupyter nbextension enable vim_binding/vim_binding
git clone git://github.com/luckytoilet/nbextension-scratchpad
jupyter nbextension enable nbextension-scratchpad/main
