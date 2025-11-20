# Podman Commands Cheat Sheet

A concise reference guide for managing containers and images in **Podman**, designed for data science and reproducible research workflows (e.g., BIOS 512 or 611 projects).

---

## 🛠️ Image Management

| Command | Description |
|----------|--------------|
| `podman build -t <name> .` | Build an image from a `Containerfile` in the current directory. Use `-t` to tag/name it. |
| `podman images` | List all locally available images. |
| `podman rmi <image-id>` | Remove a specific image. |
| `podman tag <old-name> <new-name>` | Rename or retag an image. |
| `podman inspect <image-id>` | View detailed metadata for an image (environment, layers, etc.). |

---

## 🚀 Container Lifecycle

| Command | Description |
|----------|--------------|
| `podman run -d -p 8787:8787 -e PASSWORD=rstudio -v $(pwd):/home/rstudio/project:Z <image>` | Run a container in detached mode, exposing RStudio on port 8787 with mounted project files. |
| `podman ps` | List running containers. |
| `podman ps -a` | List all containers (running or stopped). |
| `podman stop <container-id>` | Stop a running container. |
| `podman start <container-id>` | Start a stopped container. |
| `podman restart <container-id>` | Restart a container. |
| `podman rm <container-id>` | Remove a stopped container. |
| `podman exec -it <container-id> bash` | Open an interactive bash shell inside a running container. |

---

## 📦 Volume & File Management

| Command | Description |
|----------|--------------|
| `podman volume ls` | List named volumes. |
| `podman volume inspect <volume-name>` | Show volume details (paths, usage). |
| `podman volume rm <volume-name>` | Delete an unused volume. |
| `podman cp <container-id>:/path/in/container ./path/on/host` | Copy files from container to host. |
| `podman cp ./path/on/host <container-id>:/path/in/container` | Copy files from host to container. |

---

## 🔍 Troubleshooting & Inspection

| Command | Description |
|----------|--------------|
| `podman logs <container-id>` | View logs from a running container. |
| `podman inspect <container-id>` | Inspect configuration and metadata. |
| `podman stats` | Show live CPU/memory stats for all running containers. |
| `podman top <container-id>` | Show processes running inside a container. |

---

## 🪜 Cleanup Commands

| Command | Description |
|----------|--------------|
| `podman stop $(podman ps -aq)` | Stop all containers. |
| `podman rm $(podman ps -aq)` | Remove all stopped containers. |
| `podman rmi $(podman images -aq)` | Delete all images. |
| `podman system prune -a` | Remove all unused containers, images, and volumes. *(Be careful!)* |
| `podman system df` | Show disk space usage by Podman resources. |

---

## 💡 Development & Debugging

| Command | Description |
|----------|--------------|
| `podman run -it --rm <image> bash` | Run container interactively and auto-remove when finished. |
| `podman port <container-id>` | Show port mappings. |
| `podman inspect --format '{{.NetworkSettings.IPAddress}}' <container-id>` | Display container's IP address. |

---

## 🛡️ Version & Info

| Command | Description |
|----------|--------------|
| `podman version` | Display Podman version. |
| `podman info` | Show system-level information (storage, network). |
| `podman help` | List all available commands. |
| `podman <command> --help` | Get details for a specific command. |

---

## ✅ Example: BIOS512 RStudio Container

```bash
# Build the image
podman build -t bios512-wine .

# Run RStudio container
podman run -d -p 8787:8787 -e PASSWORD=rstudio -v $(pwd):/home/rstudio/project:Z bios512-wine

# View running containers
podman ps

# Stop and remove the container
podman stop <container-id>
podman rm <container-id>
```

