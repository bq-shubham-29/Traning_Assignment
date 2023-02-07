resource "aws_security_group" "security_group1" {
     name        = "sg"
     vpc_id      = var.vpc_id1

  ingress{
            from_port        = 22
            to_port          = 22
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
        }  
  ingress{
            from_port        = 80
            to_port          = 80
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
        }  
  ingress{
            from_port        = -1
            to_port          = -1
            protocol         = "icmp"
            cidr_blocks      = ["0.0.0.0/0"]
        }  

  egress {
            from_port        = 0
            to_port          = 0
            protocol         = "-1"
            cidr_blocks      = ["0.0.0.0/0"]
        }

}



resource "aws_security_group" "security_group2" {
     name        = "sg"
     vpc_id      = var.vpc_id2
     provider = aws.Mumbai
    

  ingress{
            from_port        = 22
            to_port          = 22
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
        }  
  ingress{
            from_port        = -1
            to_port          = -1
            protocol         = "icmp"
            cidr_blocks      = ["0.0.0.0/0"]
        }  
  ingress{
            from_port        = 80
            to_port          = 80
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
        }  
        
  egress {
            from_port        = 0
            to_port          = 0
            protocol         = "-1"
            cidr_blocks      = ["0.0.0.0/0"]
        }

}

