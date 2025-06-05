FROM python:3.12-bookworm

LABEL org.opencontainers.image.source=https://github.com/STRAST-UPM/python_project_template

# copy source files
WORKDIR /usr/src/python_project
COPY ./code/main.py .
COPY ./code/src ./src

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "main.py" ]
