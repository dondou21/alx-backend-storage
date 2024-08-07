-- SQL script that ranks country origins of ands, order by the nuber of (non-unique) fans

SELECT origin, SUM(fans) AS nb_fans
    FROM metal_bands
    GROUP BY origin
    ORDER BY nb_fans DESC;