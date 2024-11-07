FROM ubuntu:22.04
LABEL maintainer="609022045@qq.com"

RUN apt update

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get install -y tzdata \
  && ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
  && dpkg-reconfigure -f noninteractive tzdata

RUN apt install -y git curl wget zsh net-tools vim nginx

RUN chsh -s /bin/zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
RUN git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN git clone https://github.com/mhinz/vim-startify ~/.vim/plugged/vim-startify
RUN git clone https://github.com/scrooloose/nerdtree ~/.vim/plugged/nerdtree
RUN git clone https://github.com/vim-airline/vim-airline ~/.vim/plugged/vim-airline
RUN git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/plugged/vim-airline-themes
RUN git clone https://github.com/Yggdroot/indentLine ~/.vim/plugged/indentLine

RUN apt clean

COPY ../.zshrc /root/
COPY ../.vimrc /root/
WORKDIR /root


