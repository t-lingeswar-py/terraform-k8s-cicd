provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_pod" "nginx_pod" {
  metadata {
    name = "nginx-pod"
    labels = {
      app = "nginx"
    }
  }

  spec {
    container {
      name  = "nginx"
      image = "nginx:latest"

      port {
        container_port = 80
      }
    }
  }
}
