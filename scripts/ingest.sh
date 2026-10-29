#!/bin/bash
# Ingestão de dados educacionais e de segurança pública no HDFS
# Fonte: dados públicos (ex.: IPECE/CEAPED, DENATRAN/SINESP, INEP)
# Uso: ./scripts/ingest.sh <caminho-local-do-arquivo> <destino-hdfs>

set -e

LOCAL_FILE=$1
HDFS_PATH=$2

hdfs dfs -mkdir -p "$HDFS_PATH"
hdfs dfs -put "$LOCAL_FILE" "$HDFS_PATH/$(basename "$LOCAL_FILE")"
echo "Ingestão concluída: $LOCAL_FILE -> $HDFS_PATH"
