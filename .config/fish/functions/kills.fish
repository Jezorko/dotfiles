# Kills all processes with given name using SIGKILL
function kills
    for pid in (ps -A | grep $argv | awk '{print $1}')
        kill -s SIGKILL $pid
    end
end
