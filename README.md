# docker-bake-playground

Ref: <https://docs.docker.com/build/bake/>

## Usage

```bash
docker buildx bake
```


## Enable `containerd` for attestation

1. `sudo vi /etc/docker/daemon.json` and make sure this exists:

```json
{
    "features": {
        "containerd-snapshotter": true
    }
}
```

2. Restart docker: `sudo systemctl restart docker`
3. Verify with: `docker info -f '{{ .DriverStatus }}'`. Should return `[[driver-type io.containerd.snapshotter.v1]]`
