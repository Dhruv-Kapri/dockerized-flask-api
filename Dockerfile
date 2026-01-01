FROM python:3.12-slim

WORKDIR /app

COPY wheels /wheels
RUN pip install /wheels/*

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
