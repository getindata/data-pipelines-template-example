{% macro generate_schema_name(custom_schema_name, node) -%}
    {{ dbt_common_macros.custom_generate_schema_name(custom_schema_name, node) }}
{%- endmacro %}