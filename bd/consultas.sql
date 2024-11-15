-- Felipe Mendes Salles

-- 1-Retorne a quantidade de debêntures listadas no dia anterior (disponível).

SELECT COUNT(*) AS quantidade_debentures
FROM bcp_final
WHERE DATE(data) = (
    SELECT MAX(DATE(data))
    FROM bcp_final
    WHERE DATE(data) <= CURDATE()
);

-- 2-Retorne a duration média de todas as debêntures em cada um dos últimos 5 dias úteis.

WITH ultimos_dias_uteis AS (
    SELECT DISTINCT Data
    FROM bcp_final
    WHERE Data IS NOT NULL AND Data <= CURDATE()
    ORDER BY Data DESC
    LIMIT 5
)
SELECT 
    u.Data,
    d.Código AS debenture_id,
    AVG(d.Duration) AS duration_media
FROM bcp_final d
JOIN ultimos_dias_uteis u ON d.Data = u.Data
GROUP BY u.Data, d.Código
ORDER BY u.Data DESC, d.Código;


-- 3-Busque os códigos únicos de todas as debêntures da empresa de nome “VALE S/A”.
SELECT DISTINCT `Código`
FROM bcp_final
WHERE nome = 'VALE S/A';



