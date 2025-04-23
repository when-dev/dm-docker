FROM python:3.12-slim

WORKDIR /app

RUN pip install --upgrade pip setuptools wheel

COPY . .

RUN pip install .

CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "60080"]
