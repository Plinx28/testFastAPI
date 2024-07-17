FROM python:3.10-slim

COPY . .
WORKDIR .

RUN pip install -r requirements.txt
# "--proxy-headers",
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

EXPOSE 3478