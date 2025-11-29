setup: uv oh-my-zsh homebrew

uv:
  #!/usr/bin/env bash
  curl -LsSf https://astral.sh/uv/install.sh | sh

oh-my-zsh:
  #!/usr/bin/env bash
  curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh

homebrew:
  #!/usr/bin/env bash
  NONINTERACTIVE=1 curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
