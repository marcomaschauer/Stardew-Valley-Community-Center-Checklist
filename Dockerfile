FROM python:3.10
WORKDIR /usr/stardewvalley
ENV TZ="Europe/Berlin"

RUN pip install --upgrade pip
RUN pip install Flask

COPY . . 

CMD [ "flask", "--app", "main", "run", "-h", "0.0.0.0", "-p", "80"]
