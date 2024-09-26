-- macros/date_helpers.sql
{% macro parse_date(date_str) %}
  PARSE_DATE('%Y-%m-%d', {{ date_str }})
{% endmacro %}
