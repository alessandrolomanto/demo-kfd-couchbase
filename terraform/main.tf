terraform {

  required_version = ">= 0.12"

  required_providers {
    aws        = "=3.37.0"
  }
}

module "velero" {
  source             = "../vendor/modules/dr/eks-velero"
  backup_bucket_name = "fury-eks-demo-velero"
  oidc_provider_url  = "oidc.eks.eu-central-1.amazonaws.com/id/2CB638CE54F56687D21389EE5805F8F6"

}
