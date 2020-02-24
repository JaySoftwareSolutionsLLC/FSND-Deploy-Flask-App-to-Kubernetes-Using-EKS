FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# RUN gunicorn -b :8080 main:APP

# EXPOSE 8080
# CMD ["gunicorn", "-b", "0.0.0.0:8080", "main:APP"]

# CMD ["gunicorn", "-b", "0.0.0.0:8000", "app"]

# ENTRYPOINT ["python", "main.py"]
CMD ["gunicorn", "-b", "0.0.0.0:8080", "main:APP"]