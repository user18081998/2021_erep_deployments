FROM solr:8
COPY ./schema.xml /opt/solr/conf/
COPY ./solr_curl_field.sh /
COPY ./solr_script.sh /
RUN chmod +x /solr_curl_field.sh
RUN chmod +x /solr_script.sh
ENTRYPOINT ["/solr_script.sh", "-c", "pages"]