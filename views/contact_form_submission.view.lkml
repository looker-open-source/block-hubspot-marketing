view: contact_form_submission {
  sql_table_name: @{DATASET_NAME}.CONTACT_FORM_SUBMISSION ;;

  dimension: contact_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contact_id ;;
  }

  dimension: conversion_id {
    type: number
    sql: ${TABLE}.conversion_id ;;
  }

  dimension: form_id {
    type: number
    sql: ${TABLE}.form_id ;;
  }

  dimension: page_url {
    type: string
    sql: ${TABLE}.page_url ;;
  }

  dimension: portal_id {
    type: number
    sql: ${TABLE}.portal_id ;;
  }

  dimension: timestamp {
    type: string
    sql: ${TABLE}.timestamp ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [contact_id]
  }
}
