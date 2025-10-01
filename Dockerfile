FROM rabbitmq:3-management

EXPOSE 5672 15672

ENV RABBITMQ_USER=${RABBITMQ_USER}
ENV RABBITMQ_PASS=${RABBITMQ_PASS}
ENV RABBITMQ_VHOST=${RABBITMQ_VHOST}

COPY create-user.sh /create-user.sh
RUN chmod +x /create-user.sh

ENTRYPOINT ["/create-user.sh"]
