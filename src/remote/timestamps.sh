users=`ls /home/ -1`;
for user in $users; do
    web_dir="/home/${user}/public_html";
    if [ -d ${web_dir} ]; then
        timestamp=`find ${web_dir} -type f -size +0b -exec stat -c %Y {} + 2> /dev/null | sort -n | tail -1`;
        if [ "${timestamp}" != "" ]; then
            echo "${timestamp} ${user}";
        fi
    fi
done
