module "s3_bucket" {
  source = "./modules/s3-bucket"
}

module "cloudfront" {
  source = "./modules/cloudfront"
  domain_name = module.s3_bucket.bucket_regional_domain_name
  target_origin_id = module.s3_bucket.target_origin_id
  origin_access_identity = module.s3_bucket.cloudfront_access_identity_path
}