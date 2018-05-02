# Basic script to kill all old bars and launch new.

# Terminate already running bad instances
killall -q polybar


# Wait until the processes have been shut down
while ps aux | grep -x polybar >/dev/null; do sleep 1; done

export MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g')

# Launch the example bar
polybar example

