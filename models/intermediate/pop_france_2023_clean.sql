SELECT
num_departement,
LOWER (
    TRANSLATE(
    intitule_departement,
    'àèéêîòôùû',
    'aeeeioouu'
  ))AS libelle_departement,
total_pop
  FROM {{ ref('stg_bdd_projet__pop_france_2023') }}