set -evxu
# install workspace switching utility
sudo apt install wmctrl

# static workspaces
dconf write /org/gnome/mutter/dynamic-workspaces false
dconf write /org/gnome/desktop/wm/preferences/num-workspaces 9

# key bindings to switch between workspaces
c="/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom"
# [0]
dconf write "${c}0/binding" "'<Primary><Alt>KP_Home'"
dconf write "${c}0/command" "'wmctrl -s 0'"
dconf write "${c}0/name" "'Switch to workspace 0'"
# [1]
dconf write "${c}1/binding" "'<Primary><Alt>KP_Left'"
dconf write "${c}1/command" "'wmctrl -s 1'"
dconf write "${c}1/name" "'Switch to workspace 1'"
# [2]
dconf write "${c}2/binding" "'<Primary><Alt>KP_End'"
dconf write "${c}2/command" "'wmctrl -s 2'"
dconf write "${c}2/name" "'Switch to workspace 2'"
# [3]
dconf write "${c}3/binding" "'<Primary><Alt>KP_Up'"
dconf write "${c}3/command" "'wmctrl -s 3'"
dconf write "${c}3/name" "'Switch to workspace 3'"
# [4]
dconf write "${c}4/binding" "'<Primary><Alt>KP_Begin'"
dconf write "${c}4/command" "'wmctrl -s 4'"
dconf write "${c}4/name" "'Switch to workspace 4'"
# [5]
dconf write "${c}5/binding" "'<Primary><Alt>KP_Down'"
dconf write "${c}5/command" "'wmctrl -s 5'"
dconf write "${c}5/name" "'Switch to workspace 5'"
# [6]
dconf write "${c}6/binding" "'<Primary><Alt>KP_Page_Up'"
dconf write "${c}6/command" "'wmctrl -s 6'"
dconf write "${c}6/name" "'Switch to workspace 6'"
# [7]
dconf write "${c}7/binding" "'<Primary><Alt>KP_Right'"
dconf write "${c}7/command" "'wmctrl -s 7'"
dconf write "${c}7/name" "'Switch to workspace 7'"
# [8]
dconf write "${c}8/binding" "'<Primary><Alt>KP_Next'"
dconf write "${c}8/command" "'wmctrl -s 8'"
dconf write "${c}8/name" "'Switch to workspace 8'"
# finally add all keybindings to custom-keybindings
C="['${c}0/','${c}1/','${c}2/','${c}3/','${c}4/','${c}5/','${c}6/','${c}7/', '${c}8/']"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "${C}"

# place window buttons on top left
dconf write /org/gnome/desktop/wm/preferences/button-layout "'close,minimize,maximize:'"

# alt-tab only switches within workspace apps
dconf write /org/gnome/shell/app-switcher/current-workspace-only true

# isolate workspaces
dconf write /org/gnome/shell/extensions/dash-to-dock/isolate-workspaces true

# disable screen lock
dconf write /org/gnome/desktop/screensaver/lock-enabled false

echo "all done"
