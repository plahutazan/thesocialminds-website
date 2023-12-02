FROM python

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

ENV PORT=1749

EXPOSE 1749

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "1749"]