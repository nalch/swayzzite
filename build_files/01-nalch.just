setup: oh-my-zsh homebrew

oh-my-zsh:
  #!/usr/bin/env sh
  curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh

homebrew:
  #!/usr/bin/env sh
  NONINTERACTIVE=1 curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
