terraform {
  backend "s3" {
    bucket = "bonacs"
    key    = "cassandra"
    region = "us-east-1"
  }
}
