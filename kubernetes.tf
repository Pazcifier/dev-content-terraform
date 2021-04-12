resource "ibm_container_cluster" "kubernetes_cluster" {
  name            = "terraform-cluster-test"
  datacenter      = "dal10"
  machine_type    = "free"
  hardware        = "shared"

  no_subnet        = true

  default_pool_size = 1
}

data "ibm_container_cluster_config" "cluster_config" {
  cluster_name_id   = ibm_container_cluster.kubernetes_cluster.id
  
  # Usado para tener nuestra sesión de kubectl y autenticación con calico
  admin           = "true"
  network         = "true"
  config_dir      = "/tmp"
}