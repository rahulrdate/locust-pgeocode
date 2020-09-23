FROM python:3.8

RUN pip3 install locust requests pgeocode
EXPOSE 8089 5557
RUN useradd --create-home locust
USER locust
WORKDIR /opt
ENTRYPOINT ["locust"]
