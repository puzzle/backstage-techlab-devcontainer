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

## Verification

> **Important:** This is NOT the training project itself — just a pre-check of the environment. Run the verification script inside the Dev Container before the lab starts to confirm everything works.

### Run the script

Open a terminal inside the Dev Container and run:

```bash
bash verify.sh
```

Expected output (all lines must show `[OK]`):

```
Backstage Techlab - Verification
---------------------------------
[OK]      Node.js (v24.x.x)
[OK]      npm (10.x.x)
[OK]      yarn (1.x.x)
[OK]      backstage cli (11.x.x)
---------------------------------
All four lines must show [OK] before starting the lab.
```

### Manual verification steps

If you prefer to check manually, run the following commands in the Dev Container terminal:

```bash
# Check Node.js
node --version

# Check npm
npm --version

# Check yarn
yarn --version

# Check npm registry reachability (fetches @backstage/create-app version)
npx -y @backstage/create-app --version
```

All commands must return a version number without errors.

### Troubleshooting

If any check shows `[MISSING]`, take a screenshot of the terminal output and send it to the address provided in your training invitation email so it can be resolved before the lab starts.

## Links

- [Backstage Techlab](https://github.com/puzzle/backstage-techlab)
- [Backstage Documentation](https://backstage.io/docs)
