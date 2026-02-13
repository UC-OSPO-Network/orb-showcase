FROM python:3.11-alpine


WORKDIR /app


COPY requirements.txt .



RUN python3 -m pip install -r requirements.txt --no-cache-dir


COPY . .

ENV PORT=8000

CMD ["sh", "-c", "uvicorn main:app --host 0.0.0.0 --port $PORT"]
