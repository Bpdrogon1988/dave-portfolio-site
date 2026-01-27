# Dave Portfolio Site

This repository contains a simple portfolio website built for my assignment.

## Purpose of the Repository
This repo stores the HTML and CSS files that make up the portfolio website.  
It also demonstrates my ability to:
- Create a GitHub repository
- Upload project files
- Use Git version control
- Publish a website using GitHub Pages

## Git Workflow Steps I Followed

### 1. Created a GitHub Repository
- Created the repo named `dave-portfolio-site`
- Set it to public

### 2. Prepared My Project Files
- Extracted the ZIP folder on my computer
- Verified the files: index.html, project pages, style.css

### 3. Uploaded Files to GitHub
- Clicked **Add file → Upload files**
- Selected all files inside my project folder
- Clicked **Commit changes**

### 4. Enabled GitHub Pages
- Went to **Settings → Pages**
- Set source to **main branch** and **root folder /**
- Saved the settings
- GitHub returned a live site URL

### 5. Challenges I Faced
- Confusion with ZIP vs extracted folder
- Uploading files individually
- Navigating GitHub interface

### 6. How I Solved Them
- Extracted the ZIP properly before uploading
- Dragged all files into GitHub’s upload window
- Followed step-by-step instructions to enable Pages

## Live Website
(https://bpdrogon1988.github.io/dave-portfolio-site/.)

## Run Locally with Docker

1. Build the image:
   ```bash
   docker build -t dave-portfolio-site .
   ```
2. Run the container:
   ```bash
   docker run --rm -p 8080:80 dave-portfolio-site
   ```
3. Open the site:
   ```
   http://localhost:8080
   ```

### Run Locally with Docker Compose

1. Build and start the container:
   ```bash
   docker compose up --build
   ```
2. Open the site:
   ```
   http://localhost:8080
   ```
3. (Optional) Verify locally:
   ```bash
   curl -I http://localhost:8080
   ```
