resource "kubernetes_deployment" "microservicio" {
  metadata {
    name = "microservicio"
    labels = {
      App = "microservicio"
    }
  }

  spec {
    replicas = 2
    selector {
      match_labels = {
        App = "microservicio"
      }
    }
    template {
      metadata {
        labels = {
          App = "microservicio"
        }
      }
      spec {
        container {
          image = "gaton/helloworld"
          name  = "helloworld"

          port {
            container_port = 8010
          }

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }
        }
      }
    }
  }
}
