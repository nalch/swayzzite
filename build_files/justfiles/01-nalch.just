setup: oh-my-zsh ssh

oh-my-zsh:
  #!/usr/bin/env bash
  curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh

ssh:
  #!/usr/bin/env bash
  mkdir -p ~/.ssh && chmod 700 ~/.ssh
  touch ~/.ssh/config
  chmod 600 ~/.ssh/config

