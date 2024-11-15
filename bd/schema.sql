CREATE DATABASE IF NOT EXISTS debentures_db;
USE debentures_db;

CREATE TABLE IF NOT EXISTS debentures (
    codigo VARCHAR(50),
    nome VARCHAR(255),
    repac_venc DATE,
    indice_correcao VARCHAR(50),
    taxa_compra DECIMAL(10, 4),
    taxa_venda DECIMAL(10, 4),
    taxa_indicativa DECIMAL(10, 4),
    desvio_padrao DECIMAL(10, 4),
    pu DECIMAL(15, 4),
    duration DECIMAL(10, 4),
    percentual_reune DECIMAL(5, 2),
    indexador VARCHAR(50),
    data DATE,
    PRIMARY KEY (codigo, data)
);
