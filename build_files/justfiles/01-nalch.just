# run the other setup tasks
[group('nalch')]
setup: oh-my-zsh ssh

# install and configure oh-my-zsh
[group('nalch')]
oh-my-zsh:
  #!/usr/bin/env bash
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# create ssh folder with correct permissions
[group('nalch')]
ssh:
  #!/usr/bin/env bash
  mkdir -p ~/.ssh && chmod 700 ~/.ssh
  touch ~/.ssh/config
  chmod 600 ~/.ssh/config

# update the config files
[group('nalch')]
dotfiles:
  #!/usr/bin/env bash
  chezmoi update

# update the os and reboot
[group('nalch')]
update:
  #!/usr/bin/env bash
  sudo rpm-ostree reset
  sudo bootc upgrade --apply
