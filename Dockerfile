FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .
CMD ["python", "app.py"]

EXPOSE 8001

# Run app (use uvicorn instead of python -m to ensure proper reload handling)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8001"]