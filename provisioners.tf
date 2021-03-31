resource "null_resource" "apply-deploy-load" {
    provisioner "local-exec" {
        command = <<EOT
            ./apply-yaml.sh "${data.ibm_container_cluster_config.cluster_config.config_file_path}" "deploy-getting-started.yaml"
        EOT
    }
    depends_on = [ibm_container_cluster.kubernetes_cluster]
}