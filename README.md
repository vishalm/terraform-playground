# terraform-playground
Terrraform learning


* Add connection.tf
    * Added Connection setting for Google Azure AWS any
    * Do `terraform init` will make sure all the dependencies are in place in .terraform folder in root. (something like npm install)
* Create : `terraform plan` and Apply `terraform apply`
    * Add resources.tf
        * add aws setting for vpc and run `terraform plan`
        * Output
        ```js
            Resource actions are indicated with the following symbols:
            + create

            Terraform will perform the following actions:

            # aws_vpc.enviorment-example-two will be created
            + resource "aws_vpc" "enviorment-example-two" {
                + arn                              = (known after apply)
                + assign_generated_ipv6_cidr_block = false
                + cidr_block                       = "10.0.0.0/16"
                + default_network_acl_id           = (known after apply)
                + default_route_table_id           = (known after apply)
                + default_security_group_id        = (known after apply)
                + dhcp_options_id                  = (known after apply)
                + enable_classiclink               = (known after apply)
                + enable_classiclink_dns_support   = (known after apply)
                + enable_dns_hostnames             = true
                + enable_dns_support               = true
                + id                               = (known after apply)
                + instance_tenancy                 = "default"
                + ipv6_association_id              = (known after apply)
                + ipv6_cidr_block                  = (known after apply)
                + main_route_table_id              = (known after apply)
                + owner_id                         = (known after apply)
                + tags                             = {
                    + "Name" = "terraform-aws-vpc-example-two"
                    }
                }
            ```

            * `terraform apply`
            * Output


            ``` js
            PS C:\Users\s799985\Documents\DICE\POC\terraform-playground> terraform apply

                    An execution plan has been generated and is shown below.
                    Resource actions are indicated with the following symbols:
                    + create

                    Terraform will perform the following actions:

                    # aws_vpc.enviorment-example-two will be created
                    + resource "aws_vpc" "enviorment-example-two" {
                        + arn                              = (known after apply)
                        + assign_generated_ipv6_cidr_block = false
                        + cidr_block                       = "10.0.0.0/16"
                        + default_network_acl_id           = (known after apply)
                        + default_route_table_id           = (known after apply)
                        + default_security_group_id        = (known after apply)
                        + dhcp_options_id                  = (known after apply)
                        + enable_classiclink               = (known after apply)
                        + enable_classiclink_dns_support   = (known after apply)
                        + enable_dns_hostnames             = true
                        + enable_dns_support               = true
                        + id                               = (known after apply)
                        + instance_tenancy                 = "default"
                        + ipv6_association_id              = (known after apply)
                        + ipv6_cidr_block                  = (known after apply)
                        + main_route_table_id              = (known after apply)
                        + owner_id                         = (known after apply)
                        + tags                             = {
                            + "Name" = "terraform-aws-vpc-example-two"
                            }
                        }

                Plan: 1 to add, 0 to change, 0 to destroy.

                Do you want to perform these actions?
                Terraform will perform the actions described above.
                Only 'yes' will be accepted to approve.

                Enter a value: yes

                aws_vpc.enviorment-example-two: Creating...
                aws_vpc.enviorment-example-two: Still creating... [10s elapsed]
                aws_vpc.enviorment-example-two: Still creating... [20s elapsed]
                aws_vpc.enviorment-example-two: Creation complete after 27s [id=vpc-03e3bf29db9c8f633]

            ``` 
