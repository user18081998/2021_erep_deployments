FROM solr:8
COPY --chmod=777 ./schema.xml /opt/solr/conf/
COPY --chmod=777 ./solr_curl_field.sh /
COPY --chmod=777 ./solr_script.sh /
USER root
RUN echo 'SOLR_JETTY_HOST="0.0.0.0"' >> /etc/default/solr.in.sh
# RUN chmod +x /solr_curl_field.sh
# RUN chmod +x /solr_script.sh
USER solr
ENTRYPOINT ["/solr_script.sh", "-c", "pages"]