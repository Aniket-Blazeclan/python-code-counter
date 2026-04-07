from fastapi import FastAPI
import uvicorn

app = FastAPI()

@app.get("/health")
def health_check():
    """Endpoint to check service health."""
    return {"status": "ok", "message": "API is running"}

if __name__ == "__main__":
    # Run the API locally
    uvicorn.run(app, host="127.0.0.1", port=8000)
