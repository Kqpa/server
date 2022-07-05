#!/bin/sh 

FILE_NAME='data.json'
NEW_IP="$1"
COMMIT_MESSAGE='updated the server IP address'

if [ $# -eq 0 ]; then
	echo "$0: new pi required as an argument" && exit 1
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
