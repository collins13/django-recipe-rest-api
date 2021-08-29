FROM python:3
ENV PYTHONUNBUFFERED 1

COPY requirements.txt ./
RUN pip install -r requirements.txt

RUN mkdir /app
WORKDIR /app

COPY ./app /app

# RUN adduser -D user

# USER user


# CMD [ "python", "./your-daemon-or-script.py" ]