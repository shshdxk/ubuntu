sudo apt update

sudo apt install -y git curl wget zsh net-tools vim nginx

chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/mhinz/vim-startify ~/.vim/plugged/vim-startify
git clone https://github.com/scrooloose/nerdtree ~/.vim/plugged/nerdtree
git clone https://github.com/vim-airline/vim-airline ~/.vim/plugged/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/plugged/vim-airline-themes
git clone https://github.com/Yggdroot/indentLine ~/.vim/plugged/indentLine

sudo apt clean

curl -fLo ~/.zshrc https://raw.githubusercontent.com/shshdxk/ubuntu/refs/heads/main/.zshrc
curl -fLo ~/.vimrc https://raw.githubusercontent.com/shshdxk/ubuntu/refs/heads/main/.vimrc


