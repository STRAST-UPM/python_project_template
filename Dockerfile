FROM python:3.12-bookworm

LABEL org.opencontainers.image.source=https://github.com/STRAST-UPM/python_project_template

WORKDIR /usr/src/python_project/src

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./code/src .

CMD [ "python", "main.py" ]
