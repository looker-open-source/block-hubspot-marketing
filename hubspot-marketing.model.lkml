connection: "brick-layer"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: contact {
  join: contact_list_member {
    sql_on: ${contact.id} = ${contact_list_member.contact_id} ;;
    relationship: one_to_one
  }
  join: contact_list {
    sql_on: ${contact_list_member.contact_list_id} = ${contact_list.id} ;;
    relationship: one_to_many
  }
  join: contact_property_history {
    sql_on: ${contact.id} = ${contact_property_history.contact_id} ;;
  }
  join: contact_form_submission {
    sql_on: ${contact.id} = ${contact_form_submission.contact_id} ;;
  }
  join: form {
    sql_on: ${contact_form_submission.form_id} = ${form.guid} ;;
  }
  join: email_event {
    sql_on: ${contact.id} = ${email_event.recipient} ;;
  }
  join: email_campaign {
    sql_on: ${email_event.email_campaign_id} = ${email_campaign.id} ;;
  }
  join: email_subscription_change {
    sql_on: ${email_event.id} = ${email_subscription_change.caused_by_event_id} ;;
  }
  join: email_subscription {
    sql_on: ${email_subscription_change.subscription_id} = ${email_subscription.id} ;;
  }
  ### email_event_* tables all labeled as "Email Event Attributes"
  join: email_event_sent {
    sql_on: ${email_event.id} = ${email_event_sent.id} ;;
    view_label: "Email Event Attributes"
  }
  join: email_event_suppressed {
    sql_on: ${email_event.id} = ${email_event_suppressed.id} ;;
    view_label: "Email Event Attributes"
  }
  join: email_event_click {
    sql_on: ${email_event.id} = ${email_event_click.id} ;;
    view_label: "Email Event Attributes"
  }
  join: email_event_dropped {
    sql_on: ${email_event.id} = ${email_event_dropped.id} ;;
    view_label: "Email Event Attributes"
  }
  join: email_event_open {
    sql_on: ${email_event.id} = ${email_event_open.id} ;;
    view_label: "Email Event Attributes"
  }
  join: email_event_delivered {
    sql_on: ${email_event.id} = ${email_event_delivered.id} ;;
    view_label: "Email Event Attributes"
  }
  join: email_event_forward {
    sql_on: ${email_event.id} = ${email_event_forward.id} ;;
    view_label: "Email Event Attributes"
  }
  join: email_event_deferred {
    sql_on: ${email_event.id} = ${email_event_deferred.id} ;;
    view_label: "Email Event Attributes"
  }
  join: email_event_print {
    sql_on: ${email_event.id} = ${email_event_print.id} ;;
    view_label: "Email Event Attributes"
  }
  join: email_event_bounce {
    sql_on: ${email_event.id} = ${email_event_bounce.id} ;;
    view_label: "Email Event Attributes"
  }
  join: email_event_spam_report {
    sql_on: ${email_event.id} = ${email_event_spam_report.id} ;;
    view_label: "Email Event Attributes"
  }
  join: email_event_status_change {
    sql_on: ${email_event.id} = ${email_event_status_change.id} ;;
    view_label: "Email Event Attributes"
  }
}

explore: owner {
  label: "Calendar Event"
  join: calendar_event {
    sql_on: ${calendar_event.owner_id} = ${owner.owner_id} ;;
    relationship: one_to_many
  }
}
