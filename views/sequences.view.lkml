view: sequences {
  derived_table: {
    sql: with
      grouped_table as(
        SELECT
          contact.id  AS contact_id,
          CAST(TIMESTAMP(FORMAT_TIMESTAMP('%F %H:%M:%E*S', PARSE_TIMESTAMP('%m-%d-%YT%H:%M:%S', email_event.created)  , 'America/Los_Angeles')) AS DATE) AS email_date
        FROM hubspot_marketing.CONTACT  AS contact
        LEFT JOIN hubspot_marketing.EMAIL_EVENT  AS email_event ON contact.id = email_event.recipient
        GROUP BY 1,2
      )
      SELECT
        grouped_table.contact_id  AS contact_id,
        grouped_table.email_date as email_date,
        RANK()  OVER (PARTITION BY contact_id ORDER BY email_date) AS touch_sequence
      FROM grouped_table
      ORDER BY 1 DESC, 2 ASC
      LIMIT 500
       ;;
  }
  dimension: id {
    type: string
    primary_key: yes
    sql: CAST(${TABLE}.contact_id AS STRING) || ' ' || CAST(${TABLE}.email_date as STRING);;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: contact_id {
    type: number
    sql: ${TABLE}.contact_id ;;
  }

  dimension_group: email_date {
    type: time
    sql: ${TABLE}.email_date ;;
    timeframes: [date, raw]
  }

  dimension: touch_sequence {
    view_label: "Contact"
    type: number
    sql: ${TABLE}.touch_sequence ;;
  }

  set: detail {
    fields: [contact_id, email_date, touch_sequence]
  }
}
