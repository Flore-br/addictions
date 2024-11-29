SELECT 
    DATE(annee, 1, 1) AS annee_date,
    patho_niv1,
    cla_age_5 AS age,
    region_name AS region,
    dept_name AS departement,
    ecv.dept,
    Ntop,
    Npop,
    prev,	
    libelle_sexe,
    tp.taux_pauvrete,
FROM {{ ref('stg_bdd_projet__effectifs') }} AS ecv
LEFT JOIN {{ ref('stg_bdd_projet__dept_region_name') }} AS drn
    ON ecv.dept = drn.dept1
LEFT JOIN {{ ref('stg_bdd_projet__taux_pauvreté') }} AS tp
    ON ecv.dept = tp.code_departement 
