# [0]
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/binding "'<Primary><Alt>KP_Home'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/command "'wmctrl -s 0'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/name "'Switch to workspace 0'"
# [1]
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/binding "'<Primary><Alt>KP_Left'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/command "'wmctrl -s 1'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/name "'Switch to workspace 1'"
# [2]
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/binding "'<Primary><Alt>KP_End'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/command "'wmctrl -s 2'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/name "'Switch to workspace 2'"
# [3]
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/binding "'<Primary><Alt>KP_Up'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/command "'wmctrl -s 3'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/name "'Switch to workspace 3'"
# [4]
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/binding "'<Primary><Alt>KP_Begin'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/command "'wmctrl -s 4'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/name "'Switch to workspace 4'"
# [5]
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/binding "'<Primary><Alt>KP_Down'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/command "'wmctrl -s 5'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/name "'Switch to workspace 5'"
# [6]
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/binding "'<Primary><Alt>KP_Page_Up'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/command "'wmctrl -s 6'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/name "'Switch to workspace 6'"
# [7]
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7/binding "'<Primary><Alt>KP_Right'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7/command "'wmctrl -s 7'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7/name "'Switch to workspace 7'"
# [8]
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom8/binding "'<Primary><Alt>KP_Next'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom8/command "'wmctrl -s 8'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom8/name "'Switch to workspace 8'"

c0="'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/'"
c1="'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/'"
c2="'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/'"
c3="'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/'"
c4="'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/'"
c5="'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/'"
c6="'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/'"
c7="'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7/'"
c8="'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom8/'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "[$c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8]"

# print all
for i in $(seq 0 8); do echo [${i}]; for j in binding command name; do echo -en ${j}=; dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom$i/$j; done; done


