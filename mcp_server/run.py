from fastapi import FastAPI, Request
import requests
import os

app = FastAPI()

HOME_ASSISTANT_URL = os.getenv("SUPERVISOR_TOKEN", "http://supervisor/core/api")
HA_TOKEN = os.getenv("SUPERVISOR_TOKEN", "")

@app.get("/")
def root():
    return {"status": "MCP server running", "version": "1.0.0"}

@app.get("/hello")
def hello():
    return {"message": "Hello from MCP Server!"}

@app.post("/call_service")
async def call_service(request: Request):
    body = await request.json()
    domain = body.get("domain", "light")
    service = body.get("service", "toggle")
    entity_id = body.get("entity_id", "light.living_room")

    url = f"http://supervisor/core/api/services/{domain}/{service}"
    headers = {
        "Authorization": f"Bearer {HA_TOKEN}",
        "Content-Type": "application/json",
    }

    data = {"entity_id": entity_id}
    response = requests.post(url, headers=headers, json=data)

    return {
        "status_code": response.status_code,
        "response": response.text,
    }

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000, reload=False)

