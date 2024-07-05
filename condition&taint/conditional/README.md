### Change env value on terraform.tfvars to check the condition statement works.###

### To taint the resource follow below commands###
# terraform destroy -- will destroy resource and will not recreate
# terraform taint -- will destroy resource and will recreate next time and bring to exiting terraform manage.	

1, Change the instance type in configuration file and then taint the resource.

#terraform taint aws_instance.web[0]
#terraform show
#terraform apply

Then verify in aws console.

2, To import the resource to exisiting terraform state file follow below.
### create a instance manually and follow steps to import to exiting state file.

#terraform show
#terraform import aws_instance.raju i-067ee33f10189693b @@Change the instance ID accordingly.
#terraform show
#terraform destroy
