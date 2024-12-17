
resource "aws_route53_record" "expense" {
    count = length(var.instance_names) #["db","backend","frontend"] count=3
    zone_id = var.zone_id
    #if instance name 'frontend' then domain_name = lingaiah.online 
    #if instance name 'db' then domain_name = db.lingaiah.online 
    #if instance name 'backend' then domain_name = backend.lingaiah.online 
    name = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
    type = "A"
    ttl  = 1
   
    # For frontend, aws_instance.expense[frontend].public_ip
    # For backend,  aws_instance.expense[backend].private_ip
    # For db,       aws_instance.expense[db].private_ip

    records = var.instance_names[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
    allow_overwrite = true
}

