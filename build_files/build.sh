#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y gh htop zsh sway waybar swaylock gcc ansible yq jq rofi pavucontrol rustc cargo

# Use a COPR Example:
# dnf5 -y copr enable ublue-os/staging
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

dnf5 -y copr enable scottames/ghostty
dnf5 -y install ghostty

#wget "https://repo.protonvpn.com/fedora-$(cat /etc/fedora-release | cut -d' ' -f 3)-stable/protonvpn-stable-release/protonvpn-stable-release-1.0.3-1.noarch.rpm"
#dnf5 -y install ./protonvpn-stable-release-1.0.3-1.noarch.rpm && dnf5 -y check-update --refresh
# dnf5 -y install proton-vpn-gnome-desktop

#### Example for enabling a System Unit File

systemctl enable podman.socket
