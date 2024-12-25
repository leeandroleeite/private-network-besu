## Instructions to Run Besu Using Docker

1. **Prepare Configuration Files:**
   Ensure that the `genesis.json` and `besu-config.toml` files are correctly configured and placed in the same directory as your Dockerfile.

2. **Build Docker Image:**
   ```bash
   docker build -t besu-private-network .
   ```

3. **Start the Network:**
   Use `docker-compose` to start the Besu node:
   ```bash
   docker-compose up -d
   ```

   This command will run Besu in the background, exposing ports 8545, 8546, and 9545 for HTTP RPC, WebSocket RPC, and metrics, respectively.

4. **Monitor the Logs:**
   To monitor logs from the Besu container, use:
   ```bash
   docker logs -f besu-node
   ```

5. **Access Besu RPC:**
   Use tools like `curl`, Postman, or Besu CLI to interact with the Besu node through the exposed RPC HTTP endpoint (e.g., `http://localhost:8545`).

6. **Stop the Network:**
   To stop the Besu node, run:
   ```bash
   docker-compose down
   ```
