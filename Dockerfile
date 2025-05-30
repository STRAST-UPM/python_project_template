FROM python:3.12-bookworm

WORKDIR /usr/src/project

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./code ./code

WORKDIR /usr/src/project/code
CMD [ "python", "main.py" ]
