SELECT 
    CASE 
        WHEN SAFE_CAST(CAST(annee AS STRING) || '-01-01' AS DATE) IS NOT NULL THEN 
            DATE(CAST(annee AS STRING) || '-01-01')
        ELSE 
            NULL
    END AS annee_date,
    patho_niv1,
    cla_age_5 AS age,
    region_name AS region,
    dept_name AS departement,
    ecv.dept,
    Ntop,
    Npop,
    prev,    
    libelle_sexe,
    tp.taux_pauvrete
FROM `projet-final-le-wagon-442809`.`dbt_lbouabdallah`.`stg_bdd_projet__effectifs` AS ecv
LEFT JOIN `projet-final-le-wagon-442809`.`dbt_lbouabdallah`.`stg_bdd_projet__dept_region_name` AS drn
    ON ecv.dept = drn.dept1
LEFT JOIN `projet-final-le-wagon-442809`.`dbt_lbouabdallah`.`stg_bdd_projet__taux_pauvreté` AS tp
    ON ecv.dept = tp.code_departement;





