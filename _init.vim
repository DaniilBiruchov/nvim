" Включает определение типа файла, загрузку соответствующих ему плагинов и файлов отступов
filetype plugin indent on
set encoding=utf-8 " Ставит кодировку UTF-8
set nocompatible " Отключает обратную совместимость с Vi
syntax enable " Включает подсветку синтаксиса
set guifont=Cousine_Nerd_Font_Mono:h12

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim')) " Если vim-plug не установлен
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
  " И скачать его оттуда
  " А после прогнать команду PlugInstall, о которой мы сейчас поговорим
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/site/bundle') "Начать искать плагины в этой директории
"Тут будут описаны наши плагины
call plug#end() "Перестать это делать
