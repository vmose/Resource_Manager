-- macros/date_helpers.sql
-- examplr of reusable date handling/transformations, i.e., date parsing
{% macro parse_date(date_str) %}
  PARSE_DATE('%Y-%m-%d', {{ date_str }})
{% endmacro %}
