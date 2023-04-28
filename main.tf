provider "aws" {
  
  region = "us-east-1"

}

resource "aws_instance" "web_prod" {

    ami           = "ami-007855ac798b5175e"
    instance_type = "t2.micro"

    tags ={
        
        Name = "TF-Instance"
        
        }
}

resource "aws_s3_bucket" "mabucket" {
   
    bucket = "nonebucket262021"
    
    tags{
        Name = "terrabucket"
        Environment = "Dev"
    }
}
