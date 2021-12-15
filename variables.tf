variable "region" {
  description = "Region to work on."
  type        = string
}

variable "env" {  
  description = "The environment (e.g. prod, non-prod, implementation,upgrade)"
  type        = string
  default = "non-prod"
}

variable "clients" {  
  description = "A list of client certificate name"
  type        = list(string)
  default = ["client"]
}

variable "cert_issuer" { 
  description = "Common Name for CA Certificate"
  type        = string
  default = "CA"
}

variable "cert_server_name" { 
  description = "Name for the Server Certificate"
  type        = string
  default = "Server"
}

variable "aws_tenant_name" {
  description = "Name for the AWS Tenant"
  type        = string 
  default = "AWS"
}

variable "key_save_folder" {
  description = "Where to store keys (relative to pki folder)"
  type        = string 
  default     = "clientvpn_keys"
}

variable "subnet_id" {
  description = "The subnet ID to which we need to associate the VPN Client Connection."
  type        = string
}

variable "client_cidr_block" {
  description = "VPN CIDR block, must not overlap with VPC CIDR. Client cidr block must be at least a /22 range."
  type        = string
  default = "10.250.0.0/22"
}

variable "target_cidr_block" {
  description = "The CIDR block to wich the client will have access to. Might be VPC CIDR's block for example."
  type        = string
}

variable "dns_servers" {
  description = "Information about the DNS servers to be used for DNS resolution. A Client VPN endpoint can have up to two DNS servers."
  type        = list(string)
  default     = null
}

variable "vpn_name" {
  description = "The name of the VPN Client Connection."
  type        = string
  default     = "AWS_VPN"
}

variable "cloudwatch_enabled" {
  description = "Indicates whether connection logging is enabled."
  type = bool
  default = true
}

variable "cloudwatch_log_group" {
  description = "The name of the cloudwatch log group."
  type        = string
  default = "vpn_endpoint_cloudwatch_log_group"
}

variable "cloudwatch_log_stream" {
  description = "The name of the cloudwatch log stream."
  type        = string
  default = "vpn_endpoint_cloudwatch_log_stream"
}

variable "aws_cli_profile_name" {
  description = "The name of the aws cli profile used in scripts"
  type        = string
  default     = "default"
}

variable "client_auth" {
  description = "the type of client authentication to be used : certificate-authentication / directory-service-authentication / federated-authentication"
  type        = string
  default     = "federated-authentication"
}


variable "saml_provider_arn" {
  description = "The ARN of the IAM SAML identity provider if type is federated-authentication"
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "The VPC ID to which we need to generate the SG for clientVPN ."
  type        = string
}