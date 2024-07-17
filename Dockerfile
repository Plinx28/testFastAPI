FROM python:3.10-slim

COPY . .
WORKDIR .

RUN pip install -r requirements.txt

CMD ["uvicorn", "main:app", "--proxy-headers", "--host", "127.0.0.1", "--port", "80"]

EXPOSE 3478