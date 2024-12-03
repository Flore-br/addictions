SELECT
SUM (Npop) as Npop_total,
SUM (Ntop) as Ntop_total,
(SUM (Ntop) / SUM (Npop)) as prev_france
FROM {{ref('bdd_projet_effectifs_V3')}}
WHERE annee = '2022-01-01'