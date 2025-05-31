group "default" {
  targets = ["go", "rust"]
}

target "go" {
  context    = "./go"
  dockerfile = "Dockerfile"
  tags = ["docker-bake-playground/go:latest"]
}

target "rust" {
  context    = "./rust"
  dockerfile = "Dockerfile"
  tags = ["docker-bake-playground/rust:latest"]
}
