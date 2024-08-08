-- List all bands with Glam rock as their main style, ranked by their longevity
SELECT
    band_name,
    CASE
        WHEN formed IS NOT NULL THEN
            CASE
                WHEN split IS NULL OR split = 0 THEN 2022 - formed
                ELSE split - formed
            END
        ELSE 0
    END AS lifespan
FROM
    bands
WHERE
    style = 'Glam rock'
ORDER BY
    lifespan DESC;