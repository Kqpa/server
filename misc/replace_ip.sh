#!/bin/sh

FILE_NAME='./../data.json'

NEW_IP="$1"
NEW_COMMIT_MESSAGE="Updated the server IP address to \`$NEW_IP\`"

DOWN_MESSAGE="Server Down"
DOWN_COMMIT_MESSAGE="Took the server down on \`server.kqpa.me\`"

if [ $# -eq 0 ]; then
	echo "usage: $0 <IP> # Updates server IP" && \
	echo "usage: $0 -s   # Stops the server" && \
	exit 1
fi

: > $FILE_NAME

if [ $NEW_IP = "-s" ]; then

cat <<EOT >> $FILE_NAME
{
	"text": "$DOWN_MESSAGE"
}
EOT

git add -A :/ && git pull && git commit -m "$DOWN_COMMIT_MESSAGE" && git push
echo "$0: successfully replaced the IP in '$FILE_NAME' with '$DOWN_MESSAGE'"

else

cat <<EOT >> $FILE_NAME
{
	"text": "$NEW_IP"
}
EOT

git add -A :/ && git pull && git commit -m "$NEW_COMMIT_MESSAGE" && git push
echo "$0: successfully replaced the IP in '$FILE_NAME' with '$NEW_IP'"

fi

exit 0
