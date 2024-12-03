SELECT
dept as n_departement,
LOWER (departement) as libelle_departement,
ROUND ((AVG (prev)),2) as prev
FROM {{ ref('For_mapping') }}
WHERE annee = '2022-01-01'
AND dept NOT IN ('1','3','5','6','7')
GROUP BY dept, departement
ORDER BY dept