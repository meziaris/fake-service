# Fake Service

A simple Go service that provides basic server information and health check endpoints. Perfect for testing, development, and demonstration purposes.

## 🚀 Features

- Root endpoint (`/`) returning server information
- Health check endpoint (`/application/health`)
- Multi-platform Docker support (Distroless & AlmaLinux)

## 📋 API Endpoints

### Root Endpoint (`GET /`)

```json
{
    "code": 200,
    "hostname": "my-host",
    "server_time": "2024-11-04T17:40:12.176137+07:00"
}
```

### Health Check (`GET /application/health`)

```json
{
    "status": "healthy",
    "server_time": "2024-11-04T17:41:04.824567+07:00"
}
```

## 🐳 Docker Support

The service provides two Docker configurations:

### Distroless (Default)
Uses gcr.io/distroless/static-debian11 for a minimal, secure runtime:
```bash
# Build
docker build -t fake-service .

# Run
docker run -p 3333:3333 fake-service
```

### AlmaLinux

Uses almalinux:9 for RHEL-compatible environments:

```bash
# Build
docker build -f Dockerfile.almalinux -t fake-service-alma .

# Run
docker run -p 3333:3333 fake-service-alma
```

## 🛠️ Project Structure
```bash
.
├── Dockerfile              # Distroless-based Dockerfile
├── Dockerfile.almalinux    # AlmaLinux-based Dockerfile
├── README.md               # Documentation
├── go.mod                  # go.mod file
└── main.go                 # Main application entry
```

## 📝 License

MIT License

## 👥 Author

Mezi Apronny (@meziaris)
