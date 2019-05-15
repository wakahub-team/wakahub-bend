FROM ubuntu:latest
LABEL maintainer="Cohort 25"
RUN apt-get update
RUN apt-get install -y python3 python3-pip python-dev
COPY ./ ./app
WORKDIR ./app
RUN pip3 install -r requirements.txt
ENV FLASK_APP app.py
ENV FLASK_ENV development
ENTRYPOINT ["python3"]
CMD ["app.py"]
EXPOSE 5000