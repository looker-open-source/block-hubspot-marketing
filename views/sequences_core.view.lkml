include: "//@{CONFIG_PROJECT_NAME}/sequences.view.lkml"


view: sequences {
  extends: [sequences_config]
}

###################################################

view: sequences_inner {
  derived_table: {
    sql: SELECT
          contact.id  AS contact_id,
          email_event.created AS email_date
        FROM hubspot_marketing.CONTACT  AS contact
        LEFT JOIN hubspot_marketing.EMAIL_EVENT  AS email_event ON contact.id = email_event.recipient
        GROUP BY 1,2
 ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: [detail*]
  }

  dimension: contact_id {
    type: number
    sql: ${TABLE}.contact_id ;;
    hidden: yes
  }

  dimension: email_date {
    hidden: yes
    type: string
    sql: ${TABLE}.email_date ;;
  }

  set: detail {
    fields: [contact_id, email_date]
  }
}


view: sequences_core {
  derived_table: {
    sql:
      SELECT
        inner_table.contact_id  AS contact_id,
        inner_table.email_date as sent_on,
        RANK()  OVER (PARTITION BY contact_id ORDER BY email_date) AS touch_sequence
      FROM ${sequences_inner.SQL_TABLE_NAME} as inner_table
      ORDER BY 1 DESC, 2 ASC
      LIMIT 500 ;;
  }

  dimension: id {
    type: string
    primary_key: yes
    sql: CAST(${TABLE}.contact_id AS STRING) || ' ' || CAST(${TABLE}.sent_on as STRING) ;;
  }

  dimension: contact_id {
    hidden: yes
    type: number
    sql: ${TABLE}.contact_id ;;
  }

  dimension: touch_sequence {
    view_label: "Contact"
    type: number
    sql: ${TABLE}.touch_sequence ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension_group: sent_on {
    hidden: yes
    type: time
    sql: ${TABLE}.sent_on ;;
    timeframes: [date, raw]
  }

  set: detail {
    fields: [contact_id, sent_on_date, touch_sequence]
  }
}
