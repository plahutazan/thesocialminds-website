FROM python
WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY ./app/main.py /app/main.py

ENV PORT=26114

EXPOSE 26114

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "26114"]