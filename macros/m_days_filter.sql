{% macro m_days_filter(column_name) %}
    CAST({{ column_name }} AS TIMESTAMP) >= CURRENT_TIMESTAMP - INTERVAL '1 day'
{% endmacro %}
