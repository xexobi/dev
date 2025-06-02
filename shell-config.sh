#!/bin/sh

alias_line="alias fvim='XDG_CONFIG_HOME=\$HOME/dev/config XDG_DATA_HOME=\$HOME/dev/data XDG_STATE_HOME=\$HOME/dev/state nvim'"

# Deteksi shell aktif
current_shell=$(ps -p $$ -o comm=)

echo "Shell aktif: $current_shell"

case "$current_shell" in
  bash)
    echo "$alias_line" >> "$HOME/.bashrc"
    echo "Alias ditambahkan ke .bashrc"
    echo "Jalankan: source ~/.bashrc atau buka ulang terminal"
    ;;
  zsh)
    echo "$alias_line" >> "$HOME/.zshrc"
    echo "Alias ditambahkan ke .zshrc"
    echo "Jalankan: source ~/.zshrc atau buka ulang terminal"
    ;;
  fish)
    mkdir -p "$HOME/.config/fish"
    echo "alias fvim 'env XDG_CONFIG_HOME=\$HOME/fvim/config XDG_DATA_HOME=\$HOME/fvim/data XDG_STATE_HOME=\$HOME/fvim/state nvim'" >> "$HOME/.config/fish/config.fish"
    echo "Alias ditambahkan ke config.fish (fish shell)"
    ;;
  *)
    echo "Shell tidak di kenal : menambahkan ke keduanya"
    echo "$alias_line" >> "$HOME/.zshrc"
    echo "Alias ditambahkan ke .zshrc"
    echo "Jalankan: source ~/.zshrc atau buka ulang terminal"                                                 echo "$alias_line" >> "$HOME/.bashrc"
    echo "Alias ditambahkan ke .bashrc"
    echo "Jalankan: source ~/.bashrc atau buka ulang
terminal"
    ;;
esac

