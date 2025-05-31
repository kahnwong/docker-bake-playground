group "default" {
  targets = ["go", "rust"]
}

target "go" {
  context    = "./go"
  dockerfile = "Dockerfile"
  tags = ["ghcr.io/kahnwong/docker-bake-playground/go:latest"]
  platforms = ["linux/amd64"]

  cache-from = [
    {
      type = "gha"
    }
  ]
  cache-to = [
    {
      type = "gha"
      mode = "max"
    }
  ]

  attest = [
    {
      type = "provenance"
      mode = "max"
    },
    {
      type = "provenance"
    }
  ]
}

target "rust" {
  context    = "./rust"
  dockerfile = "Dockerfile"
  tags = ["ghcr.io/kahnwong/docker-bake-playground/rust:latest"]
  platforms = ["linux/amd64"]

  cache-from = [
    {
      type = "gha"
    }
  ]
  cache-to = [
    {
      type = "gha"
      mode = "max"
    }
  ]

  attest = [
    {
      type = "provenance"
      mode = "max"
    },
    {
      type = "provenance"
    }
  ]
}
