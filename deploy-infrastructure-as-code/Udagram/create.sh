#/bin/sh

if [ $# -lt 3 ]; then
  echo "Usage: create.sh <stack name> <template-file> <parameters-file>"
  exit 1
fi
echo "Updating $1 stack..."
aws cloudformation create-stack \
                   --stack-name $1 \
                   --template-body file://$2  \
                   --parameters file://$3  \
                   --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"  \
                   --region=us-west-2 

echo "stack $1 updated!"
exit 0

