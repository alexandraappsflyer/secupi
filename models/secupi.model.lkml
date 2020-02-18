connection: "big_query_test"

# include all the views
include: "/views/**/*.view"

datagroup: secupi_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: secupi_default_datagroup

explore: events {}
