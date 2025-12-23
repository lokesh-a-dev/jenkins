FROM python:3.11-slim

WORKDIR /app

COPY myapp/ /app/

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "hello.py"]
