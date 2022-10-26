FROM python:3.9
WORKDIR /app
COPY http-call.py /app
COPY requirements.txt /app
CMD [ "python","http-call.py" ]
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.4.2-linux-x86_64.tar.gz
RUN tar -xzf elasticsearch-8.4.2-linux-x86_64.tar.gz
RUN wget https://artifacts.elastic.co/downloads/kibana/kibana-8.4.2-linux-x86_64.tar.gz
RUN tar -xzf kibana-8.4.2-linux-x86_64.tar.gz
