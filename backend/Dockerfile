FROM python:3.11-alpine


WORKDIR /app


COPY requirements.txt .



RUN python3 -m pip install -r requirements.txt --no-cache-dir


COPY . .


EXPOSE 8000


CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
