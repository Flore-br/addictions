SELECT 
annee,
dept, 
nbre_addicts
FROM {{ ref('nbre_addicts_departements') }}
WHERE dept NOT IN ("1","2","3","4","5","6","7","8","9")
AND annee = '2022-01-01'
ORDER BY dept ASC