terraform {

  required_version = ">= 0.12"

  required_providers {
    aws        = "=3.37.0"
  }
}

module "velero" {
  source             = "../vendor/modules/dr/eks-velero"
  backup_bucket_name = "fury-eks-demo-velero"
  oidc_provider_url  = "oidc.eks.eu-central-1.amazonaws.com/id/FDA50255601FA42F78A34F16FA3D102B"

}
