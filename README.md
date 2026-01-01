# dockerized-flask-api

A simple Flask API packaged in Docker for demonstration purposes.

---
## Steps 

### 1. Setup Python Virtual Environment
  ```bash
  python3 -m venv .venv
  source .venv/bin/activate
  
  # Install Python dependencies
  pip install -r requiremenst.txt
  ```

### 2. Run Flask App Locally
  ```bash
  # Activate virtual environment if not already
  source .venv/bin/activate

  # Run the app
  python app.py
  ```

### 3. Build, Run, Push, and Pull Docker Image
  ```bash
   # Activate virtual environment if not already
  source .venv/bin/activate

  # Build the Docker image
  docker build -t flask-docker-demo .

  # Run locally
  docker run -p 5000:5000 flask-docker-demo:latest

  # Tag for Docker Hub
  # docker tag <local_img> <docker_username>/<repo_name>:<latest>
  docker tag flask-docker-demo dcap27/flask-docker-demo:latest

  # Push to Docker Hub
  docker push dcap27/flask-docker-demo:latest

  # Pull from Docker Hub
  docker pull dcap27/flask-docker-demo:latest

  # Run pulled image
  docker run -p 5000:5000 dcap27/flask-docker-demo:latest
  ```

---

## Note
- The `wheels/` directory is intentionally committed for learning and offline installation demonstrations.
- This workaround was used when Docker could send data but could not fetch packages from the internet (DNS/network issues).
- Dependencies were downloaded in advance using: `pip download -d ./wheels/`
