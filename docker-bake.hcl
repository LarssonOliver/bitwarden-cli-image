variable "TAG" {
    default = "latest"
}

variable "REPO" {
    default = "larssonoliver/bitwarden-cli"
}

group "default" {
    targets = ["bitwarden-cli"]
}

target "bitwarden-cli" {
    context = "."
    dockerfile = "./Dockerfile"
    platforms = [
        "linux/amd64",
        "linux/arm64",
    ]
    tags = [
        "${REPO}:latest",
        "${REPO}:${TAG}",
    ]
}
