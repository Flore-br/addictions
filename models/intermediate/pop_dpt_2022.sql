WITH effectifs_clean as (SELECT *,
FROM {{ ref('bdd_projet_effectifs_V3') }}
WHERE annee = '2022-01-01'
ORDER BY dept ASC
)
SELECT
CASE  
    WHEN dept= '1' THEN '01'
    WHEN dept= '2' THEN '02'
    WHEN dept= '3' THEN '03'
    WHEN dept= '4' THEN '04'
    WHEN dept= '5' THEN '05'
    WHEN dept= '6' THEN '06'
    WHEN dept= '7' THEN '07'
    WHEN dept= '8' THEN '08'
    WHEN dept= '9' THEN '09'
    ELSE dept
END AS n_departement,
SUM (Npop) as pop
FROM effectifs_clean
GROUP BY dept

