include: "//@{CONFIG_PROJECT_NAME}/sequences.view.lkml"


view: sequences {
  extends: [sequences_config]
}

###################################################

view: sequences_core {
  derived_table: {
    sql: with
      grouped_table as(
        SELECT
          contact.id  AS contact_id,
          email_event.created AS email_date
        FROM hubspot_marketing.CONTACT  AS contact
        LEFT JOIN hubspot_marketing.EMAIL_EVENT  AS email_event ON contact.id = email_event.recipient
        GROUP BY 1,2
      )
      SELECT
        grouped_table.contact_id  AS contact_id,
        grouped_table.email_date as sent_on,
        RANK()  OVER (PARTITION BY contact_id ORDER BY email_date) AS touch_sequence
      FROM grouped_table
      ORDER BY 1 DESC, 2 ASC
      LIMIT 500 ;;
  }

  dimension: id {
    type: string
    primary_key: yes
    sql: CAST(${TABLE}.contact_id AS STRING) || ' ' || CAST(${TABLE}.email_date as STRING) ;;
  }

  dimension: contact_id {
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
    type: time
    sql: ${TABLE}.sent_on ;;
    timeframes: [date, raw]
  }

  set: detail {
    fields: [contact_id, sent_on_date, touch_sequence]
  }
}
