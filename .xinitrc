#start dbus manual 
if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
      eval `dbus-launch --sh-syntax`
  fi
#window manager
pulseaudio --start &
exec awesome
