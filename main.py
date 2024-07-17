from fastapi import FastAPI, Query

app = FastAPI(title="Recruto greetings")


@app.get("/")
async def hello(name: str = Query(None, alias="name"),
                message: str = Query(None, alias="message")):
    name = "Someone" if name is None else name
    message = "hmm.. are you here?" if message is None else message
    return f"Hello {name}! {message}"
