set $mod Mod4
set $ws1 "1"
set $ws2 "2"
set $ws3 "3"
set $ws4 "4"

floating_modifier $mod

font pango:CascadiaMono 14

bindsym $mod+Return exec i3-sensible-terminal
bindsym $mod+Control+L exec i3lock -c 000000
bindsym $mod+d  exec --no-startup-id i3-dmenu-desktop --dmenu 'dmenu -b -fn 'CascadiaMono:size=16''
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m ' Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"

bindsym $mod+Shift+q kill

bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right

bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+semicolon move right

bindsym $mod+h split h
bindsym $mod+v split v

bindsym $mod+f fullscreen toggle

bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

bindsym $mod+Shift+space floating toggle
bindsym $mod+space focus mode_toggle

bindsym $mod+1 workspace number $ws1
bindsym $mod+2 workspace number $ws2
bindsym $mod+3 workspace number $ws3
bindsym $mod+4 workspace number $ws4

bindsym $mod+Shift+1 move container to workspace number $ws1
bindsym $mod+Shift+2 move container to workspace number $ws2
bindsym $mod+Shift+3 move container to workspace number $ws3
bindsym $mod+Shift+4 move container to workspace number $ws4

bindsym $mod+Shift+c reload
bindsym $mod+Shift+r restart

mode "resize" {
        bindsym semicolon resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym j resize grow width 10 px or 10 ppt
        bindsym Escape mode "default"
}
bindsym $mod+r mode "resize"

bar {
        status_command ~/bin/the_i3status -c ~/.i3status
}
