WITH calcul_prevalence AS (
    SELECT   
        ecv.dept AS departement,
        SUM(ecv.Ntop) AS total_addicts,
        SUM(ecv.Npop) AS total_population,
        ROUND(SUM(ecv.Ntop) / SUM(ecv.Npop) * 100, 2) AS prevalence
    FROM {{ ref('stg_bdd_projet__effectifs') }} AS ecv
    GROUP BY ecv.dept
)
SELECT 
    ecv.annee AS annee_date,
    ecv.patho_niv1,
    ecv.cla_age_5 AS age,
    drn.region_name AS region,
    drn.dept_name AS departement,
    ecv.dept,
    ecv.Npop,
    ecv.Ntop,
    cp.prevalence,
    ecv.libelle_sexe,
    tp.taux_pauvrete
FROM {{ ref('stg_bdd_projet__effectifs') }} AS ecv
LEFT JOIN {{ ref('stg_bdd_projet__dept_region_name') }} AS drn
    ON ecv.dept = drn.dept1
LEFT JOIN {{ ref('stg_bdd_projet__taux_pauvreté') }} AS tp
    ON ecv.dept = tp.code_departement 
LEFT JOIN calcul_prevalence AS cp
    ON ecv.dept = cp.departement
