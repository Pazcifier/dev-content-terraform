terraform {
    required_providers {
        ibm = {
            source = "IBM-Cloud/ibm"
            version = "1.20.0"
        }
    }
}

variable "ibmcloud_api_key" {
  description = "API Key de la nube de IBM, generada en Manage (IAM) -> API Keys"
}

variable "cluster_id" {
  description = "ID del cluster"
}

# Para llamar a las variables colocamos "var" seguido del nombre que le colocamos a ese bloque
provider "ibm" {
    ibmcloud_api_key = var.ibmcloud_api_key
}