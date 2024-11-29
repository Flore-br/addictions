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
FROM {{ ref('stg_bdd_projet__dept_region_name') }}