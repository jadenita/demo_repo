{% snapshot snapshot_timestamp %}

{{


 config(
target_database='PROD',    
 target_schema='snap',
 unique_key='id',
 strategy='timestamp',
 updated_at = '_ETL_LOADED_AT'
       )


}}
select * FROM {{ source('jaffle_shop', 'orders') }}

{% endsnapshot %}
