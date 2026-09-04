# Backstage Techlab – Dev Container

This repository provides a Dev Container environment to run the [Backstage Techlab](https://github.com/puzzle/backstage-techlab) without installing any tools locally.

## Included Tools

| Tool | Version |
|------|---------|
| Node.js | 24 (LTS) |
| Yarn | latest |
| Git | latest |
| Docker (via host socket) | via Docker-outside-of-Docker |

## Prerequisites

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) or Docker Engine
- [VS Code](https://code.visualstudio.com/)
- VS Code Extension: [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## Setup

1. Clone the repository:

   ```bash
   git clone https://github.com/puzzle/backstage-techlab-devcontainer.git
   cd backstage-techlab-devcontainer
   ```

2. Open VS Code:

   ```bash
   code .
   ```

3. VS Code will prompt: **"Reopen in Container"** – confirm.

   Alternatively: Command Palette (`Ctrl+Shift+P` / `Cmd+Shift+P`) → **Dev Containers: Reopen in Container**

4. The container will be built and Yarn installed. This may take a few minutes the first time.

VS Code automatically forwards the ports so the app is accessible in your local browser.

## Links

- [Backstage Techlab](https://github.com/puzzle/backstage-techlab)
- [Backstage Documentation](https://backstage.io/docs)
