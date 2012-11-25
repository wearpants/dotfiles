# setup: xrandr, xresources, xset: dpms, bell, repeat rate, pointer, xmodmap, xkbmumble: no caps, gpg/etc agents?, xscreensaver, feh/background, synaptics
# start some clients
# exec lxsession ratpoison?
echo -n "OMG it works" && date

# turn off laptop screen & big screen to high res
xrandr --output LVDS1 --off
xrandr --output VGA1 --preferred
echo "Xrandr success"

# monitor power management or whatever
xset dpms 300 600 1200
echo "xset dpms success"

# THE BELL WE HATES IT
xset b off
echo "xset b success"

# I JUST WANT TO LOCK MAH SCREEN
# xscreensaver -jwz -is -a -fag
xscreensaver -no-splash &
echo "xscreenscaver success"

# set a background ### XXX wtf, r u braindamaged?
#xsetbg -border black -onroot -fullscreen /dev/null
# YOU WILL TAKE BREAKS YES YOU WILL RESISTANCE IS F U TILE
xwrits +mouse +breakclock typetime=50 breaktime=10 canceltime=3 after=6 flashtime=:.2 after=9 +finger &
echo "xwrits success"

# make the mouse hide - XXX this will prolly hate virtualbox
# unclutter

# bee all clevah and things
ratpoison & # window manager
echo "ratpoison success"

echo "execing urxvt"
exec urxvt --title MASTERWINDOW
echo "urxvt success"

# fucking hell,just run openbox
#exec openbox
