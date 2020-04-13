#/bin/sh

if [ $# -lt 3 ]; then
  echo "Usage: update.sh <stack name> <template-file> <parameters-file>"
  exit 1
fi

aws cloudformation update-stack \
                   --stack-name $1 \
                   --template-body file://$2  \
                   --parameters file://$3  \
                   --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"  \
                   --region=us-west-2 

