# Big Data Pipeline — Educação + Segurança Pública

Projeto de big data com **Hadoop/Spark** que ingere, processa e analisa dados
educacionais e de segurança pública (acidentes com armas), com fontes públicas
brasileiras reais.

## Arquitetura

```
Fontes públicas (IPECE/CEAPED, DENATRAN/SINESP, INEP)
        ↓ ingestão
      HDFS (particionado por data/ano)
        ↓ Spark
      YARN / ResourceManager
        ↓ saída
       Hive / análise
        ↓
   Resultados → relatórios / dashboards
```

## Stack

- **Hadoop** (HDFS + YARN) via Docker Compose
- **Spark** (processamento)
- **Hive** (consultas/armazenamento)

## Como executar

```bash
docker compose up -d
```

## Status

🚧 Em desenvolvimento
