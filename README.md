# Terraform concepts

1. ec2-instance: A Terraform resource used to create and manage an AWS EC2 virtual machine. Example: aws\_instance.
2. variables: Used to store input values that make configurations reusable and flexible. Defined using the variable block.
3. conditions: Conditional expressions that choose values based on a condition, similar to an if-else statement. Example: condition ? true\_value : false\_value.
4. count-based-loop: Creates multiple resource instances using the count meta-argument. Useful when resources are identical.
5. expense: A real-world Terraform project that provisions infrastructure for an Expense application, typically including MySQL database, backend servers, frontend servers, networking, and related AWS resources.
6. locals: Used to define reusable local values within a Terraform configuration. Defined using the locals block.
7. data-source: Fetches information from existing infrastructure without creating new resources. Defined using the data block.
8. remote-state: Stores Terraform state files in a remote backend (such as S3) to enable collaboration and state sharing.
9. for-each-loop: Creates multiple resources based on a map or set of values using the for\_each meta-argument.
10. dynamic-block-loop: Generates nested configuration blocks dynamically inside a resource using the dynamic block. Useful for repeated nested settings.

