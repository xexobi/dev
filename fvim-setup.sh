echo "alias fv=nvim" >> ~/.bashrc # for bash
echo "alias fv=nvim" >> ~/.zshrc #for zsh

#make symlink to ~/.config/nvim

ln -sf ~/dev/fvim-conf ~/.config/nvim
ln -sf ~/dev/tmux-conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
