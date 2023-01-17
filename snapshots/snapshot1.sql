{% snapshot snapshot1 %}

{{

 config(
target_database='PROD',    
 target_schema='snap',
 unique_key='id',
 strategy='check',
 check_cols = 'all'
       )

}}
select * FROM {{ source('jaffle_shop', 'orders') }}

{% endsnapshot %}
