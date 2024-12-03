SELECT 
n_departement,
(REPLACE(
    REPLACE(
        REPLACE(
            REPLACE(
                REPLACE(
                    REPLACE(LOWER(libelle_departement), 'é', 'e'),
                        'è', 'e'),
                    'ê', 'e'),
                'ô', 'o'),
            ' ', '_'),
        '-', '_'),
    '', '_') AS libelle_departement,
avg_pop_per_etablissement
FROM {{ ref('pop_par_offre_de_soins') }}
GROUP BY n_departement, libelle_departement, avg_pop_per_etablissement
ORDER BY n_departement