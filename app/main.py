from fastapi import FastAPI
from fastapi.responses import JSONResponse

app = FastAPI()

@app.get("/health")
async def health_check():
    return JSONResponse(content={"message": "Service is running, and MUST WORK THIS TIME"}, status_code=200)
