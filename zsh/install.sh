if ! [ -x "$(command -v zsh)" ]
then
  echo "installing zsh"
  if [ "$(uname -s)" == "Darwin" ]
  then
    brew install zsh
  else
    sudo apt install zsh
  fi

else
  echo "zsh already installed"
  zsh --version
fi

# # Set zsh as default shell
# sudo chsh -s $(which zsh)

# Install Oh My Zsh
# https://github.com/ohmyzsh/ohmyzsh#unattended-install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install Pure Prompt
https://github.com/sindresorhus/pure#manually
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

cp zsh/.zshrc ~
