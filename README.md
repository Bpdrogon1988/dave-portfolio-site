# Dave Portfolio Site

This repository contains my portfolio website for class assignments.

## Purpose
This project shows that I can:
- Build a static website with HTML, CSS, and JavaScript.
- Use GitHub for version control.
- Publish with GitHub Pages.
- Deploy with GitHub Actions.

## Previous Assignment Steps (Initial Website + Pages)
1. Created a public GitHub repository named `dave-portfolio-site`.
2. Prepared and verified project files (`index.html`, project pages, CSS, JS).
3. Uploaded files to GitHub and committed changes.
4. Enabled GitHub Pages in repository settings.
5. Verified the live site URL.

## Current Assignment Steps (GitHub Actions Deployment)
1. Created `.github/workflows/deploy.yml`.
2. Added GitHub’s official Pages actions:
   - `actions/checkout@v4`
   - `actions/configure-pages@v5`
   - `actions/upload-pages-artifact@v3`
   - `actions/deploy-pages@v4`
3. Set workflow triggers:
   - Push to `main`
   - Manual run with `workflow_dispatch`
4. Set required permissions:
   - `contents: read`
   - `pages: write`
   - `id-token: write`
5. Set concurrency group `pages` with `cancel-in-progress: false`.
6. Set upload path to `./dave-portfolio-site` so only website files are published.
7. In **Settings → Pages**, set **Source** to **GitHub Actions**.

## How to Trigger Deployment
- **Automatic:** Push to `main`.
- **Manual:** Actions tab → **Deploy static content to Pages** → **Run workflow**.

## Validation Checklist
1. Commit and push changes.
2. Confirm workflow success in the **Actions** tab.
3. Open the GitHub Pages URL and verify updates.

## Challenges and Fixes
- **Branch mismatch (`master` vs `main`)** → Set workflow trigger to `main`.
- **Avoid publishing non-site files** → Upload only `./dave-portfolio-site`.
- **Pages source not in code** → Set it in GitHub UI under **Settings → Pages**.

## Live Website
https://bpdrogon1988.github.io/dave-portfolio-site/

## Run Locally with Docker
1. Build image:
   ```bash
   docker build -t dave-portfolio-site .
   ```
2. Run container:
   ```bash
   docker run --rm -p 8080:80 dave-portfolio-site
   ```
3. Open:
   `http://localhost:8080`

## Run Locally with Docker Compose
1. Start:
   ```bash
   docker compose up --build
   ```
2. Open:
   `http://localhost:8080`
3. Optional check:
   ```bash
   curl -I http://localhost:8080
   ```
