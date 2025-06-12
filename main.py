from fastapi import FastAPI
import uvicorn 

app = FastAPI(
    docs_url="/api-docs",
    title = "My first Python App"
    )

@app.get("/", tags = ["basic"])
async def read_root():
    return {"message": "Hello, World!"}

@app.get("/greet/{name}", tags = ["greet"])
async def greet_user(name: str):
    return {"message": f"Hello, {name}!"}


if __name__ == "__main__":
    uvicorn.run(app, host="127.0.0.1", port=8002)