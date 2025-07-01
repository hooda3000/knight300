from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Knight300 backend is running"}
