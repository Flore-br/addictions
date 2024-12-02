SELECT 
n_departement,
SUM (pop) as pop
FROM {{ ref('pop_dpt_2022') }}
GROUP BY n_departement
ORDER BY n_departement