 @@@You can take take the owners ID from specific image and below command will help to
 identify the AMI details.
 
 #aws ec2 describe-images --region us-east-1 --owners 099720109477 --profile=dev 

#aws ec2 describe-images --region us-east-1 --image-ids ami-0b0ea68c435eb488d --profile=dev