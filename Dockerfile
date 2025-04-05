FROM hshar/flaskapp
RUN apt-get update -y && \
    apt-get install -y git
RUN apt-get install python3 python3-pip -y
RUN git clone https://github.com/hshar94/flask-sample.git
RUN pip3 install flask pymysql boto3
WORKDIR /flask-sample
CMD [ "python3", "./hello.py" ]
