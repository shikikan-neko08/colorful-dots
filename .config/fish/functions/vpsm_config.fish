# Defined interactively
function vpsm_config
set home (echo $HOME);
set -Ux XBPS_DISTDIR $home/.cache/void-packages
git clone --depth 1 git://github.com/void-linux/void-packages.git $XBPS_DISTDIR
vpsm binbootstrap
vpsm update-repo
vpsm bootstrap-up
echo -e "\033[1;36m[FINISH]\033[0m vpsm is up to date !"
end
