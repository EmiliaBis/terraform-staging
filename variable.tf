variable "region" {
description = "Where my resources will be created"
type        = string 
default     = "us-east-2"

}


variable "image-name" {
   description = "This will be the image used to creat the ec2 instance"
   type        = string
   default     = "ami-001089eb624938d9f"
         
}



variable "instance-type" {
   description = "This is the size of the machine I will be creating"
   type        = string
   default     = "t2.micro"

}


variable "key-name" {
   description = "This is the name of the key i will be using to ssh into my server"
   type        = string
   default     = "first-key" 
   
   
}
  

variable "az" {
   description = "This will be my availibility zone for this project"
   type        = string
   default     = "us-east-2b" 
   
   
}
  