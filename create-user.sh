#!/bin/bash

rabbitmq-server -detached

sleep 10

rabbitmqctl add_user "$RABBITMQ_USER" "$RABBITMQ_PASS" 2>/dev/null || true
rabbitmqctl set_user_tags "$RABBITMQ_USER" administrator
rabbitmqctl add_vhost "$RABBITMQ_VHOST" 2>/dev/null || true
rabbitmqctl set_permissions -p "$RABBITMQ_VHOST" "$RABBITMQ_USER" ".*" ".*" ".*"

rabbitmqctl stop

rabbitmq-server
