resource "kubernetes_service" "microservicio" {
  metadata {
    name = "microservicio-example"
  }
  spec {
    selector = {
      App = kubernetes_deployment.microservicio.spec.0.template.0.metadata[0].labels.App
    }
    port {
      port        = 8010
      target_port = 8010
    }

    type = "LoadBalancer"
  }
}
