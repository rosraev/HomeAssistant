from fastapi import FastAPI
import time

app = FastAPI()

@app.get("/")
def root():
    return {"status": "MCP server running", "version": "1.0.0"}

@app.get("/hello")
def hello():
    return {"message": "Hello from MCP Server!"}

# Безкраен цикъл за демонстрация (може да го махнеш)
if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
