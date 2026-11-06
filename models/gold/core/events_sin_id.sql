{% set columnas_fuera = ['event_id'] %}
select
{{ dbt_utils.star ( 
    from=ref('slv_sql_server_dbo__events'),
    except=columnas_fuera
) }}
from {{ ref('slv_sql_server_dbo__events') }}
    
    