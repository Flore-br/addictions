SELECT
dept1,
region_name,
LOWER (REGEXP_REPLACE(
      REPLACE(
        REPLACE(
          REPLACE(
            REPLACE(
            REPLACE(dept_name,'é','e'),
          'è','e'),
        'ê','e'),
      '-',' '),
    'ô','o'),
    r"'"," "))  as departement_lower
FROM `projet-final-le-wagon-442809.bdd_projet.dept_region_name`