from pyspark.sql import SparkSession
from pyspark.sql.functions import col, count

spark = SparkSession.builder \
    .appName("EduSafetyPipeline") \
    .getOrCreate()

# Leitura dos dados de acidentes ingestados na HDFS
df = spark.read.option("header", "true").option("inferSchema", "true") \
    .csv("hdfs://namenode:8020/user/data/acidentes/*.csv")

# Agregação: quantidade de acidentes por ano
df = df.withColumn("ano", col("data_acidente").substr(0, 4))
accident_counts = df.groupBy("ano").count().orderBy("ano")
accident_counts.show()

# Persistência do resultado no HDFS
accident_counts.write.mode("overwrite") \
    .parquet("hdfs://namenode:8020/user/output/acidentes")

spark.stop()
