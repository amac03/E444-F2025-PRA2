FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python3-pip python-dev-is-python3 build-essential python3
ENV PIP_BREAK_SYSTEM_PACKAGES=1
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["hello.py"]