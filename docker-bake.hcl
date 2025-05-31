group "default" {
  targets = ["go", "rust"]
}

target "go" {
  context    = "./go"
  dockerfile = "Dockerfile"
  tags = ["docker-bake-playground/go:latest"]
  platforms = ["linux/amd64"]

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
  platforms = ["linux/amd64"]

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
