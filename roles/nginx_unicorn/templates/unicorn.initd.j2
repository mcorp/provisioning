#!/bin/sh

### BEGIN INIT INFO
# Provides:          unicorn
# Required-Start:    $local_fs $remote_fs $network $syslog
# Required-Stop:     $local_fs $remote_fs $network $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: starts the paysage web server
# Description:       starts paysage using start-stop-daemon
### END INIT INFO

PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

set -e

NAME=angariador
export PGPASS="postgres"
export PGUSER="postgres"
export PGHOST="localhost"

. /lib/lsb/init-functions

case "$1" in
        start)
                echo -n "Starting {{ app_name | mandatory }}: "
                cd /mcorp/{{app_name}}/production/current && /usr/local/bin/bundle exec unicorn_rails -c config/unicorn.rb -E production -D
                echo "OK"
                ;;

        stop)
                echo -n "Stopping {{app_name}}: "
                /usr/bin/pkill -f unicorn_rails
                echo "$NAME."
                ;;

        restart|reload)
                echo -n "Restarting {{app_name}}: "
                kill -HUP /mcorp/{{ app_name }}/production/shared/pids/unicorn.pid
                echo "$NAME."
                ;;

esac

exit 0