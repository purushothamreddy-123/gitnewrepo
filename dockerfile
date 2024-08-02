FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install -U pip && pip install pytest

CMD ["pytest", "test_calculator.py", "--junitxml=test-reports/report.xml"]
