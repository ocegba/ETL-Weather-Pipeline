#!/bin/sh
set -e

echo "Waiting for Cassandra to be ready..."

# Vérifie si Cassandra est prêt à accepter des connexions CQL
until cqlsh ${CQLSH_HOST:-cassandra} ${CQLSH_PORT:-9042} -e "DESCRIBE CLUSTER" --cqlversion="3.4.4" > /dev/null 2>&1; do
  echo "Cassandra is unavailable - sleeping"
  sleep 5
done

echo "Cassandra is up - executing CQL commands..."
cqlsh ${CQLSH_HOST:-cassandra} ${CQLSH_PORT:-9042} --cqlversion="3.4.4" -f /scripts/data.cql