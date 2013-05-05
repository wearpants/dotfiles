# setup: xrandr, xresources, xset: dpms, bell, repeat rate, pointer, xmodmap, xkbmumble: no caps, gpg/etc agents?, xscreensaver, feh/background, synaptics
# start some clients
# exec lxsession ratpoison?
echo -n "Starting .xsession " && date

# turn off laptop screen & big screen to high res
#xrandr --output LVDS1 --off
#xrandr --output VGA1 --preferred
#echo "Xrandr success"

# monitor power management or whatever
xset dpms 300 600 1200

# THE BELL WE HATES IT
xset b off

# I JUST WANT TO LOCK MAH SCREEN
# xscreensaver -jwz -is -a -fag
xscreensaver -no-splash &

# set a background ### XXX wtf, r u braindamaged?
#xsetbg -border black -onroot -fullscreen /dev/null
# YOU WILL TAKE BREAKS YES YOU WILL RESISTANCE IS F U TILE
xwrits +mouse +breakclock typetime=50 breaktime=10 canceltime=3 after=6 flashtime=:.2 after=9 +finger &

# redshift, adjust color tempature by time of day
redshift -l 41.8500:-87.6500 -t 6000:4400 &

# make the mouse hide - XXX this will prolly hate virtualbox
# unclutter

# start a terminal
#urxvt &

# start window manager
exec ratpoison # window manager

# fucking hell,just run openbox
#exec openbox
