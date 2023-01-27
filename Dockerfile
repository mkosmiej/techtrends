FROM python:3.8-alpine

WORKDIR /techtrends

COPY techtrends ./

RUN  pip install -r requirements.txt && python init_db.py

EXPOSE 3111

CMD ["python", "app.py"]