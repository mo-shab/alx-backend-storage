-- Calculate and rank country origins of bands by the number of non-unique fans
SELECT
    origin,
    SUM(fans) AS nb_fans
FROM
    band_name
GROUP BY
    origin
ORDER BY
    nb_fans DESC;
