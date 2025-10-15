#!/bin/bash

cat > /etc/rabbitmq/rabbitmq.conf << EOF
loopback_users.guest = false
default_user = ${RABBITMQ_DEFAULT_USER:-admin}
default_pass = ${RABBITMQ_DEFAULT_PASS:-adminpass123}
EOF

echo "RabbitMQ configuration:"
cat /etc/rabbitmq/rabbitmq.conf

exec rabbitmq-server
