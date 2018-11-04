ERRSTR="Failed when executing line: "

set -x
# install workspace switching utility
sudo apt install wmctrl                                                                                                      || { echo ${ERRSTR} ${LINENO}; exit 1;}

# static workspaces
dconf write /org/gnome/mutter/dynamic-workspaces false                                                                       || { echo ${ERRSTR} ${LINENO}; exit 1;}
dconf write /org/gnome/desktop/wm/preferences/num-workspaces 9                                                               || { echo ${ERRSTR} ${LINENO}; exit 1;}

# key bindings to switch between workspaces
c="/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom"
# [0]
dconf write "${c}0/binding" "'<Primary><Alt>KP_Home'"                                                                        || { echo ${ERRSTR} ${LINENO}; exit 1;}
dconf write "${c}0/command" "'wmctrl -s 0'"                                                                                  || { echo ${ERRSTR} ${LINENO}; exit 1;}
dconf write "${c}0/name" "'Switch to workspace 0'"                                                                           || { echo ${ERRSTR} ${LINENO}; exit 1;}
# [1]
dconf write "${c}1/binding" "'<Primary><Alt>KP_Left'"                                                                        || { echo ${ERRSTR} ${LINENO}; exit 1;}
dconf write "${c}1/command" "'wmctrl -s 1'"                                                                                  || { echo ${ERRSTR} ${LINENO}; exit 1;}
dconf write "${c}1/name" "'Switch to workspace 1'"                                                                           || { echo ${ERRSTR} ${LINENO}; exit 1;}
# [2]
dconf write "${c}2/binding" "'<Primary><Alt>KP_End'"                                                                         || { echo ${ERRSTR} ${LINENO}; exit 1;}
dconf write "${c}2/command" "'wmctrl -s 2'"                                                                                  || { echo ${ERRSTR} ${LINENO}; exit 1;}
dconf write "${c}2/name" "'Switch to workspace 2'"                                                                           || { echo ${ERRSTR} ${LINENO}; exit 1;}
# [3]
dconf write "${c}3/binding" "'<Primary><Alt>KP_Up'"                                                                          || { echo ${ERRSTR} ${LINENO}; exit 1;}
dconf write "${c}3/command" "'wmctrl -s 3'"                                                                                  || { echo ${ERRSTR} ${LINENO}; exit 1;}
dconf write "${c}3/name" "'Switch to workspace 3'"                                                                           || { echo ${ERRSTR} ${LINENO}; exit 1;}
# [4]
dconf write "${c}4/binding" "'<Primary><Alt>KP_Begin'"                                                                       || { echo ${ERRSTR} ${LINENO}; exit 1;}
dconf write "${c}4/command" "'wmctrl -s 4'"                                                                                  || { echo ${ERRSTR} ${LINENO}; exit 1;}
dconf write "${c}4/name" "'Switch to workspace 4'"                                                                           || { echo ${ERRSTR} ${LINENO}; exit 1;}
# [5]
dconf write "${c}5/binding" "'<Primary><Alt>KP_Down'"                                                                        || { echo ${ERRSTR} ${LINENO}; exit 1;}
dconf write "${c}5/command" "'wmctrl -s 5'"                                                                                  || { echo ${ERRSTR} ${LINENO}; exit 1;}
dconf write "${c}5/name" "'Switch to workspace 5'"                                                                           || { echo ${ERRSTR} ${LINENO}; exit 1;}
# [6]
dconf write "${c}6/binding" "'<Primary><Alt>KP_Page_Up'"                                                                     || { echo ${ERRSTR} ${LINENO}; exit 1;}
dconf write "${c}6/command" "'wmctrl -s 6'"                                                                                  || { echo ${ERRSTR} ${LINENO}; exit 1;}
dconf write "${c}6/name" "'Switch to workspace 6'"                                                                           || { echo ${ERRSTR} ${LINENO}; exit 1;}
# [7]
dconf write "${c}7/binding" "'<Primary><Alt>KP_Right'"                                                                       || { echo ${ERRSTR} ${LINENO}; exit 1;}
dconf write "${c}7/command" "'wmctrl -s 7'"                                                                                  || { echo ${ERRSTR} ${LINENO}; exit 1;}
dconf write "${c}7/name" "'Switch to workspace 7'"                                                                           || { echo ${ERRSTR} ${LINENO}; exit 1;}
# [8]
dconf write "${c}8/binding" "'<Primary><Alt>KP_Next'"                                                                        || { echo ${ERRSTR} ${LINENO}; exit 1;}
dconf write "${c}8/command" "'wmctrl -s 8'"                                                                                  || { echo ${ERRSTR} ${LINENO}; exit 1;}
dconf write "${c}8/name" "'Switch to workspace 8'"                                                                           || { echo ${ERRSTR} ${LINENO}; exit 1;}
# finally add all keybindings to custom-keybindings
C="['${c}0/','${c}1/','${c}2/','${c}3/','${c}4/','${c}5/','${c}6/','${c}7/', '${c}8/']"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "${C}"                                          || { echo ${ERRSTR} ${LINENO}; exit 1;}

# place window buttons on top left
dconf write /org/gnome/desktop/wm/preferences/button-layout "'close,minimize,maximize:'"                                     || { echo ${ERRSTR} ${LINENO}; exit 1;}

# alt-tab only switches within workspace apps
dconf write /org/gnome/shell/app-switcher/current-workspace-only true                                                        || { echo ${ERRSTR} ${LINENO}; exit 1;}

# disable screen lock
dconf write /org/gnome/desktop/screensaver/lock-enabled false

echo "all done"
