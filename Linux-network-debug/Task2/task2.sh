#!/bin/bash

# Check if port 9000 is open
ss -tulnp | grep 9000

# Try accessing app
curl http://localhost:9000
