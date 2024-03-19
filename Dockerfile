FROM ros:noetic
RUN ulimit -Sn 524288
# update the package list
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install net-tools neovim wget neofetch libopencv-dev python3-opencv cmake -y

# set up fancy terminal
RUN sudo apt-get install git zsh -y
RUN chsh -s $(which zsh)
RUN mkdir -p "$HOME/.zsh"
RUN git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
RUN echo "fpath+=($HOME/.zsh/pure)" >> ~/.zshrc
RUN echo "autoload -U promptinit; promptinit" >> ~/.zshrc
RUN echo "prompt pure" >> ~/.zshrc
CMD ["zsh", "-c", "neofetch && exec zsh -i"]

