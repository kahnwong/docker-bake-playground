group "default" {
  targets = ["go", "rust"]
}

target "go" {
  context    = "./go"
  dockerfile = "Dockerfile"
  tags = ["docker-bake-playground/go:latest"]

  attest = [
    {
      type = "provenance"
      mode = "max"
    },
    {
      type = "sbom"
    }
  ]
}

target "rust" {
  context    = "./rust"
  dockerfile = "Dockerfile"
  tags = ["docker-bake-playground/rust:latest"]

  attest = [
    {
      type = "provenance"
      mode = "max"
    },
    {
      type = "sbom"
    }
  ]
}
