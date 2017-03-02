DIR=$(basename "$PWD")
echo $DIR
if [ "$1" == "up" ]; then
        aws s3 sync . s3://$DIR --delete --region $2 
elif [ "$1" == "down" ]; then
    aws s3 sync s3://$DIR .  --delete --region $2
else
    echo "Don't understand."
fi