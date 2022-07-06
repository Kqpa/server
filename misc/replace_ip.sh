#!/bin/sh 

FILE_NAME='./../data.json'
NEW_IP="$1"
COMMIT_MESSAGE='updated the server IP address on `server.kqpa.me`'

if [ $# -eq 0 ]; then
	echo "usage: $0 <ip>" && exit 1
fi

: > $FILE_NAME

cat <<EOT >> $FILE_NAME
{
	"text": "$1"
}
EOT

git add . && git pull && git commit -m "$COMMIT_MESSAGE" && git push

echo "$0: successfully replaced the ip in '$FILE_NAME'"

exit 0
