Requirements:
    Solarized:
        http://www.webupd8.org/2011/04/solarized-must-have-color-paletter-for.html

Installation:

    git clone git@github.com:Erian7/.vim.git

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

PHP CodeSniffer Instructions

    composer global require drupal/coder:\>8
    cp -r ~/.composer/vendor/drupal/coder/coder_sniffer/Drupal* ~/.composer/vendor/squizlabs/php_codesniffer/CodeSniffer/Standards/

