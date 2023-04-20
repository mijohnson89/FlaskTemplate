FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flasktemplate create-db
RUN flasktemplate populate-db
RUN flasktemplate add-user -u admin -p admin
EXPOSE 5000
CMD ["flasktemplate", "run"]
