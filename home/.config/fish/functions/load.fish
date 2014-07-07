function load
    uptime | awk -F " " '{print $8}' | awk -F "," '{print $1}'
end
