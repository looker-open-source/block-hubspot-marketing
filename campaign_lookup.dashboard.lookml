- dashboard: campaign_lookup
  title: Campaign Lookup
  layout: newspaper
  elements:
  - title: Campaign Name
    name: Campaign Name
    model: block_hubspot_marketing
    explore: contact
    type: single_value
    fields: [email_campaign.name]
    sorts: [email_campaign.name]
    limit: 1
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Campaign Name: email_campaign.name
      Email Date: email_event.created_date
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Avg Conversion Rate
    name: Avg Conversion Rate
    model: block_hubspot_marketing
    explore: contact
    type: single_value
    fields: [campaign_stats.average_conversion_rate]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Email Date: email_event.created_date
    row: 28
    col: 17
    width: 7
    height: 3
  - title: Campaign Performance Vs All Campaigns
    name: Campaign Performance Vs All Campaigns
    model: block_hubspot_marketing
    explore: contact
    type: looker_column
    fields: [contact_form_submission.conversion_rate, email_event_delivered.delivered_pct,
      email_event_open.opened_pct, email_event.created_month]
    filters: {}
    sorts: [email_event.created_month desc]
    limit: 50
    dynamic_fields: [{measure: count_of_conversion_id, based_on: contact_form_submission.conversion_id,
        expression: '', label: Count of Conversion ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_series: []
    series_types:
      campaign_stats.average_conversion_rate: scatter
      campaign_stats.average_delivery_rate: scatter
      campaign_stats.average_open_rate: scatter
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      email_event_sent.count:
        is_active: true
      email_event_open.count:
        is_active: true
    defaults_version: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_null_points: true
    interpolation: linear
    hidden_fields:
    listen:
      Campaign Name: email_campaign.name
      Email Date: email_event.created_date
    row: 22
    col: 0
    width: 17
    height: 9
  - title: Avg Open Rate
    name: Avg Open Rate
    model: block_hubspot_marketing
    explore: contact
    type: single_value
    fields: [campaign_stats.average_open_rate]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Email Date: email_event.created_date
    row: 25
    col: 17
    width: 7
    height: 3
  - title: Avg Delivery Rate
    name: Avg Delivery Rate
    model: block_hubspot_marketing
    explore: contact
    type: single_value
    fields: [campaign_stats.average_delivery_rate]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Email Date: email_event.created_date
    row: 22
    col: 17
    width: 7
    height: 3
  - title: Sent
    name: Sent
    model: block_hubspot_marketing
    explore: contact
    type: single_value
    fields: [email_event_sent.count]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields:
    listen:
      Campaign Name: email_campaign.name
      Email Date: email_event.created_date
    row: 2
    col: 0
    width: 6
    height: 3
  - title: Delivered
    name: Delivered
    model: block_hubspot_marketing
    explore: contact
    type: single_value
    fields: [email_event_dropped.count]
    limit: 1
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields:
    listen:
      Campaign Name: email_campaign.name
      Email Date: email_event.created_date
    row: 2
    col: 6
    width: 6
    height: 3
  - title: Opened
    name: Opened
    model: block_hubspot_marketing
    explore: contact
    type: single_value
    fields: [email_event_open.count]
    limit: 1
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [email_event_sent.count]
    listen:
      Campaign Name: email_campaign.name
      Email Date: email_event.created_date
    row: 2
    col: 12
    width: 6
    height: 3
  - title: Conversions
    name: Conversions
    model: block_hubspot_marketing
    explore: contact
    type: single_value
    fields: [contact_form_submission.conversions]
    limit: 50
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_null_points: true
    interpolation: linear
    hidden_series: []
    hidden_fields: [email_event_open.count]
    listen:
      Campaign Name: email_campaign.name
      Email Date: email_event.created_date
    row: 2
    col: 18
    width: 6
    height: 3
  - title: Campaign Performance Over Time
    name: Campaign Performance Over Time
    model: block_hubspot_marketing
    explore: contact
    type: looker_area
    fields: [email_event.created_date, email_event_sent.count, email_event_open.count,
      email_event_click.count, contact_form_submission.conversions]
    fill_fields: [email_event.created_date]
    sorts: [email_event.created_date desc]
    limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    hidden_series: []
    series_types: {}
    series_colors:
      clicks: "#B32F37"
    ordering: none
    show_null_labels: false
    defaults_version: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    listen:
      Campaign Name: email_campaign.name
      Email Date: email_event.created_date
    row: 5
    col: 0
    width: 24
    height: 8
  - title: Subscription Changes
    name: Subscription Changes
    model: block_hubspot_marketing
    explore: contact
    type: looker_line
    fields: [email_event.created_week, email_subscription_change.subribe_rate, email_subscription_change.unsubribe_rate]
    fill_fields: [email_event.created_week]
    sorts: [email_event.created_week]
    limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: subscribtion_rate, id: subscribtion_rate,
            name: Subscribtion Rate}, {axisId: unsubscribe_rate, id: unsubscribe_rate,
            name: Unsubscribe Rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    series_labels:
      email_subscription_change.count: Change Count
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      email_event.created_week: 136
      delivered: 110
      subscription_change: 176
    series_cell_visualizations:
      email_event_sent.count:
        is_active: true
      email_event_open.count:
        is_active: true
      email_subscription_change.count:
        is_active: true
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    ordering: none
    show_null_labels: false
    defaults_version: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields:
    listen:
      Campaign Name: email_campaign.name
      Email Date: email_event.created_date
    row: 13
    col: 0
    width: 13
    height: 9
  - title: All Campaigns
    name: All Campaigns
    model: block_hubspot_marketing
    explore: contact
    type: looker_grid
    fields: [email_campaign.name, email_campaign.subject, email_campaign.type, contact_form_submission.conversions,
      email_event_delivered.delivered_pct, email_event_open.opened_pct]
    sorts: [contact_form_submission.conversions desc]
    limit: 50
    dynamic_fields: [{table_calculation: opened_percent, label: Opened Percent, expression: " if(\
          \ ${email_event_delivered.delivered_pct} = null, 0.1, 0.1)  + (0.5*rand())\
          \ + 0.10", value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {table_calculation: conversions, label: Conversions,
        expression: " if( ${contact_form_submission.conversions} = null, 1, 1)  +\
          \ (500*rand()) + 100", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number, is_disabled: true}]
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      email_event_sent.count:
        is_active: true
      email_event_open.count:
        is_active: true
      sent:
        is_active: true
      opened:
        is_active: true
      delivered:
        is_active: true
      conversions:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_null_points: true
    interpolation: linear
    hidden_series: []
    hidden_fields:
    listen:
      Email Date: email_event.created_date
    row: 31
    col: 0
    width: 24
    height: 8
  - title: Sent to Spam Events
    name: Sent to Spam Events
    model: block_hubspot_marketing
    explore: contact
    type: looker_grid
    fields: [email_event_spam_report.count, contact_list.name]
    filters:
      email_event_spam_report.count: NOT NULL
    sorts: [email_event_spam_report.count desc]
    limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      reported_as_spam:
        is_active: true
      email_event_spam_report.count:
        is_active: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields:
    listen:
      Campaign Name: email_campaign.name
      Email Date: email_event.created_date
    row: 13
    col: 13
    width: 11
    height: 9
  filters:
  - name: Campaign Name
    title: Campaign Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: block_hubspot_marketing
    explore: contact
    listens_to_filters: []
    field: email_campaign.name
  - name: Email Date
    title: Email Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: block_hubspot_marketing
    explore: contact
    listens_to_filters: []
    field: email_event.created_date