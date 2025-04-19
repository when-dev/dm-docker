FROM python:3.12-slim

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip 
RUN pip install .

CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "60080"]
