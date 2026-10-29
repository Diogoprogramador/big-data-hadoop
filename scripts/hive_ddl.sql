CREATE DATABASE IF NOT EXISTS seguranca;

CREATE TABLE IF NOT EXISTS seguranca.acidentes (
  data_acidente STRING,
  municipio STRING,
  tipo_arma STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/data/acidentes';

CREATE DATABASE IF NOT EXISTS educacao;

CREATE TABLE IF NOT EXISTS educacao.metricas_acidentes (
  ano STRING,
  total INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
LOCATION '/user/output/acidentes';
