FROM python:3.8.3-alpine
WORKDIR /usr/src/app
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

RUN pip install psycopg2-binary

ADD python.py /home/python.py
ADD store.csv /home/store.csv
ADD order_item.csv /home/order_item.csv
ADD order_header.csv /home/order_header.csv
ADD agent.csv /home/agent.csv

CMD ["/home/python.py"]
ENTRYPOINT ["python"]
