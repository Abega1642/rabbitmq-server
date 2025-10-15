FROM rabbitmq:3-management

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

EXPOSE 5672 15672

CMD ["/docker-entrypoint.sh"]
