SELECT *,
FORMAT('%02s', dept) AS n_departement,
FROM {{ ref('bdd_projet_effectifs_V3') }}
WHERE annee = '2022-01-01'
ORDER BY dept ASC


