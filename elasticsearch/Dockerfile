FROM elasticsearch:5.6.11

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch ingest-attachment
RUN echo 'http.publish_host: 127.0.0.1' >> /usr/share/elasticsearch/config/elasticsearch.yml
