# Ollama OpenWebUI Docker Compose Configuration

This docker-compose.yml file defines the services and volumes required to run OpenWebUI, an AI chatbot interface with GPU acceleration.

**Services:**

* **open-webui:**
    * Exposes port 5555 to the host's 8080
    * Uses the `ghcr.io/open-webui/open-webui` image with GPU support
    * Depends on the `ollama` service
    * Stores data in the `open-webui` volume
    * Starts automatically on boot
* **ollama:**
    * Uses the `ollama/ollama` image with GPU support
    * Stores data in the `ollama` volume
    * Exposes port 11434 to the host's 11434

**Volumes:**

* **ollama:**
    * External volume shared across all services
    * Persistent storage for Ollama data
* **open-webui:**
    * External volume specific to OpenWebUI data
    * Persistent storage for OpenWebUI data

**Usage:**

1. Save this file as `docker-compose.yml` in the root directory of your project.
2. Run the following command to start the services:

```
docker-compose up -d
```

3. Access OpenWebUI at `localhost:5555`.

**Notes:**

* This configuration requires a GPU-enabled host.
* The `ghcr.io/open-webui/open-webui` image is built from the latest OpenWebUI code.
* The `ollama/ollama` image provides the language model capabilities for OpenWebUI.
* The `resources.reservations.devices` section ensures that all available GPUs are allocated to the services.

**Additional Information:**

* OpenWebUI documentation: https://openwebui.com/
* Ollama documentation: https://ollama.ai/docs/

