echo "alias fvim=nvim" >> ~/.bashrc # for bash
echo "alias fvim=nvim" >> ~/.zshrc #for zsh

#make symlink to ~/.config/nvim

ln -sf ~/dev/fvim-conf ~/.config/nvim
