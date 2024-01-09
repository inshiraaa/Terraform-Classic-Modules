module "sftp" {

  source = "./modules/sftp"



  #AWS-SFTP

  region = "eu-west-1"
  aws-transfer-server-name = "name-sftp"
  IAM-role-name-for-sftp = "sftp"
  s3-access-policy-name = "s3-specific-bucket-access"
  sftp-user-name = "namesftp"
  sftp-s3-bucket-name = "/cloudgeeks-automation"
  s3-policy-file-location = "${file("./modules/sftp/s3-specific-bucket-access.json")}"
  ssh-public-key-file-location = "${file("./modules/sftp/name-sftp.pub")}"
}
