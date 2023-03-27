FROM python:3.10-slim-buster

WORKDIR /notes-web

COPY . .

RUN pip install --no-cache-dir --no-warn-script-location -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["./build/boot.sh"]