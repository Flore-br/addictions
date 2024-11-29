select 
(sum(ntop)/sum(npop)) 
from {{ ref('For_mapping') }}
WHERE libelle_sexe = "hommes"