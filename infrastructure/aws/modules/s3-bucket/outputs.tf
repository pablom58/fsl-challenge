output "bucket_regional_domain_name" {
  value = aws_s3_bucket.this.bucket_regional_domain_name
}

output "cloudfront_access_identity_path" {
  value = aws_cloudfront_origin_access_identity.this.cloudfront_access_identity_path
}

output "target_origin_id" {
  value = aws_cloudfront_origin_access_identity.this.id
}