#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y gh htop zsh sway waybar swaylock

# Use a COPR Example:
curl -fsSL "https://copr.fedorainfracloud.org/coprs/scottames/ghostty/repo/fedora-${VERSION_ID}/scottames-ghostty-fedora-${VERSION_ID}.repo" | sudo tee /etc/yum.repos.d/_copr:copr.fedorainfracloud.org:scottames:ghostty.repo > /dev/null
dnf5 -y copr enable ublue-os/staging

dnf5 -y install ghostty

# Disable COPRs so they don't end up enabled on the final image:
dnf5 -y copr disable ublue-os/staging

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl -LsSf https://astral.sh/uv/install.sh | sh

cp /01-nalch.just /usr/share/ublue-os/just/

#### Example for enabling a System Unit File

systemctl enable podman.socket
