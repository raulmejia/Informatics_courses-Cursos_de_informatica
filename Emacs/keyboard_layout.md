### Change your keyboard
You can also edit /etc/default/keyboard manually, here's an example:

KEYBOARD CONFIGURATION FILE

Consult the keyboard(5) manual page.

XKBMODEL="pc105"
XKBLAYOUT="us,de,fr,ua,ru"
XKBVARIANT=""
XKBOPTIONS="grp:alt_shift_toggle"

BACKSPACE="guess"

    XKBMODEL is a keyboard model variable (look at a /usr/share/X11/xkb/rules/base.lst (plain text) or /usr/share/X11/xkb/rules/base.xml (XML) for a full list);
    XKBLAYOUT variable contains a list of used layouts;   


### References
1. https://wiki.debian.org/Keyboard 


###  Magic comand  



gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'de')]"  
