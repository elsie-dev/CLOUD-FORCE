FROM python:3.8
WORKDIR /user/src/app

COPY . .

RUN python -m pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python", "./app.py"]