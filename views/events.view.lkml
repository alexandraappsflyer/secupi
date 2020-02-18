view: events {
  sql_table_name: events ;;

  dimension_group: acquired {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.acquired_on ;;
  }

  dimension: acquiree_cb_url {
    type: string
    sql: ${TABLE}.acquiree_cb_url ;;
  }

  dimension: acquiree_city {
    type: string
    sql: ${TABLE}.acquiree_city ;;
  }

  dimension: acquiree_country_code {
    type: string
    sql: ${TABLE}.acquiree_country_code ;;
  }

  dimension: acquiree_name {
    type: string
    sql: ${TABLE}.acquiree_name ;;
  }

  dimension: acquiree_region {
    type: string
    sql: ${TABLE}.acquiree_region ;;
  }

  dimension: acquiree_uuid {
    type: string
    sql: ${TABLE}.acquiree_uuid ;;
  }

  dimension: acquirer_cb_url {
    type: string
    sql: ${TABLE}.acquirer_cb_url ;;
  }

  dimension: acquirer_city {
    type: string
    sql: ${TABLE}.acquirer_city ;;
  }

  dimension: acquirer_country_code {
    type: string
    sql: ${TABLE}.acquirer_country_code ;;
  }

  dimension: acquirer_name {
    type: string
    sql: ${TABLE}.acquirer_name ;;
  }

  dimension: acquirer_region {
    type: string
    sql: ${TABLE}.acquirer_region ;;
  }

  dimension: acquirer_state_code {
    type: string
    sql: ${TABLE}.acquirer_state_code ;;
  }

  dimension: acquirer_uuid {
    type: string
    sql: ${TABLE}.acquirer_uuid ;;
  }

  dimension: acquisition_type {
    type: string
    sql: ${TABLE}.acquisition_type ;;
  }

  dimension: acquisition_uuid {
    type: string
    sql: ${TABLE}.acquisition_uuid ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: price_currency_code {
    type: string
    sql: ${TABLE}.price_currency_code ;;
  }

  dimension: price_usd {
    type: number
    sql: ${TABLE}.price_usd ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.state_code ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [acquiree_name, acquirer_name]
  }
}
