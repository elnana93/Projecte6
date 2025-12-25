
output "admin_user_login_url" {
  value = "https://${data.aws_caller_identity.current.account_id}.signin.aws.amazon.com/console"
}

output "admin_user_name" {
  value = aws_iam_user.admin_user.name
}

# Add this output block to view the encrypted password after 'terraform apply'
output "admin_user_encrypted_password" {
  value     = aws_iam_user_login_profile.admin_login.encrypted_password
  sensitive = true
}