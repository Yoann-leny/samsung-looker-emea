include: "/Google_Analytics/traffic_source.*"

view: ga_sessions_config {
  # extends: [ga_sessions_core]
  extends: [channel,category,storefront,division, traffic_source_config,device_config,geonetwork_config,totals_config]
  extension: required

  #   calendar,
  #   geonetwork,
  #   totals,
  #   device,
  #   custom_navigation_buttons,
  #   ga_sessions_partition_date,


  ########## PRIMARY KEYS ##########

  dimension: id {
    primary_key: yes
    label: "User/Session ID"
    group_label: "ID"
    description: "Unique ID for Session: Full User ID | Session ID | Session Start Date"
    sql: CONCAT(
          CAST(${full_visitor_id} AS STRING)
          , '|'
          , COALESCE(CAST(${visit_id} AS STRING),'')
          , '|'
          , CAST(${partition_date} AS STRING)
          --, CAST(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'^\d\d\d\d\d\d\d\d')) AS STRING)
        ) ;;
  }

  # measure:  add_to_cart{
  #   type:  count_distinct
  #   sql: Case when ${visits_total}=1 and  ;;
  # }

  ########## FOREIGN KEYS ##########
  dimension: full_visitor_id {
    label: "Full User ID"
    group_label: "ID"
    description: "The unique visitor ID (also known as client ID)."
    sql: ${TABLE}.fullVisitorId ;;
    hidden: yes
  }


  dimension: user_id {
    hidden: yes
    label: "User ID"
    sql: ${TABLE}.userid ;;
  }

  dimension: visit_id {
    label: "Session ID"
    group_label: "ID"
    description: "An identifier for this session. This is part of the value usually stored as the _utmb cookie. This is only unique to the user. For a completely unique ID, you should use User/Session ID"
    type: number
    sql: ${TABLE}.visitId ;;
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.clientId ;;
  }

  dimension: visitor_id {
    hidden: yes
    label: "User ID"
    sql: ${TABLE}.visitorId ;;
  }

  ########## PARAMETERS ############

  parameter: audience_selector {
    view_label: "Audience"
    description: "Use to set 'Audience Trait' field to dynamically choose a user cohort."
    type: string
    allowed_value: {
      value: "Device"
    }
    allowed_value: {
      value: "Operating System"
    }
    allowed_value: {
      value: "Browser"
    }

    allowed_value: {
      value: "Country"
    }
    allowed_value: {
      value: "Continent"
    }
    allowed_value: {
      value: "Metro"
    }
    allowed_value: {
      value: "Language"
    }

    allowed_value: {
      value: "Channel"
    }
    allowed_value: {
      value: "Medium"
    }
    allowed_value: {
      value: "Source"
    }
    allowed_value: {
      value: "Source Medium"
    }
  }

  ########## DIMENSIONS ############

  dimension: trafficSource { # nested field, needs to remain hidden
    hidden: yes
    type: string
  }

  dimension: audience_trait {
    view_label: "Audience"
    group_label: "Audience Cohorts"
    description: "Dynamic cohort field based on value set in 'Audience Selector' filter."
    type: string
    sql: CASE
              WHEN {% parameter audience_selector %} = 'Channel' THEN ${channel_grouping}
              WHEN {% parameter audience_selector %} = 'Medium' THEN ${medium}
              WHEN {% parameter audience_selector %} = 'Source' THEN ${source}
              WHEN {% parameter audience_selector %} = 'Source Medium' THEN ${source_medium}
              WHEN {% parameter audience_selector %} = 'Device' THEN ${device_category}
              WHEN {% parameter audience_selector %} = 'Browser' THEN ${browser}
              WHEN {% parameter audience_selector %} = 'Metro' THEN ${metro}
              WHEN {% parameter audience_selector %} = 'Country' THEN ${country}
              WHEN {% parameter audience_selector %} = 'Continent' THEN ${continent}
              WHEN {% parameter audience_selector %} = 'Language' THEN ${language}
              WHEN {% parameter audience_selector %} = 'Operating System' THEN ${operating_system}
        END;;
  }

  dimension: channel_grouping {
    view_label: "Acquisition"
    group_label: "Traffic Sources"
    label: "Default Channel"
    description: "The Channel Group associated with an end user's session for this View (defined by the View's Channel Groupings)."
    sql: ${TABLE}.channelGrouping ;;
  }

  dimension: hits {
    description: "Is used for unnesting the hits struct, should not be used as a standalone dimension"
    hidden: yes
    sql: ${TABLE}.hits ;;
  }

  dimension: is_first_time_visitor {
    hidden: yes
    type: yesno
    sql: ${visit_number} = 1 ;;
  }

  dimension: landing_page {
    view_label: "Behavior"
    group_label: "Pages (with Parameters)"
    label: "Landing Page (with Parameters)"
    description: "Landing page for session."
    sql: (
          SELECT
            MAX(
              CASE
                WHEN hits.isEntrance AND hits.type = 'PAGE'
                  THEN hits.page.pagePath
              END
            ) as lp
          FROM UNNEST(${TABLE}.hits) as hits
        ) ;;
  }


  dimension: landing_page_formatted {
    view_label: "Behavior"
    group_label: "Pages"
    label: "Landing Page"
    description: "Landing page for session without url parameters."
    type: string
    sql: SPLIT(${landing_page}, '?')[OFFSET(0)];;
  }


  dimension: landing_page_hostname {
    view_label: "Behavior"
    group_label: "Pages"
    label: "Landing Page Hostname"
    description: "Landing page hostname for session."
    sql: (
          SELECT
            MAX(
              CASE
                WHEN hits.isEntrance AND hits.type = 'PAGE'
                  THEN hits.page.hostname
              END
            ) as lp
          FROM UNNEST(${TABLE}.hits) as hits
        ) ;;

      drill_fields: [landing_page_formatted]
    }

    dimension: landing_page_title {
      view_label: "Behavior"
      group_label: "Pages"
      description: "Landing page title for session."
      sql: (
          SELECT
            MAX(
              CASE
                WHEN hits.isEntrance AND hits.type = 'PAGE'
                  THEN hits.page.pageTitle
              END
            ) as lp
          FROM UNNEST(${TABLE}.hits) as hits
        ) ;;
    }

    # dimension: partition_date_filter {
    #   type: string
    #   sql: CONCAT('This data is from the ','@{PDT_DATE_FILTER} ') ;;
    #   hidden: no
    #   html:  <a style="background: #FFF;float: center; padding:15px; font-weight: bold;font-size: 30%;">{{value}}  </a></strong>
    #     ;;
    # }

    dimension: social_engagement_type {
      group_label: "Social Interactions"
      label: "Social Type"
      description: "Engagement type, either 'Socially Engaged' or 'Not Socially Engaged'."
      sql: ${TABLE}.socialEngagementType ;;
    }

    dimension: visit_number {
      type: number
      view_label: "Audience"
      group_label: "User"
      label: "Session Number"
      description: "The session index for a user. Each session from a unique user will get its own incremental index starting from 1 for the first session. Subsequent sessions do not change previous session indices. For example, if a user has 4 sessions to the website, sessionCount for that user will have 4 distinct values of '1' through '4'."
      sql: ${TABLE}.visitNumber ;;
    }

    dimension: user_type {
      view_label: "Audience"
      group_label: "User"
      label: "User Type"
      description: "Either New User or Returning User, indicating if the users are new or returning."
      sql: CASE
          WHEN ${visit_number} = 1 THEN 'New User'
          ELSE 'Returning User'
         END;;

        drill_fields: [visit_number]
      }

      dimension: visit_number_tier {
        view_label: "Audience"
        group_label: "User"
        label: "Session Number Tier"
        description: "Session Number dimension grouped in tiers between 1-100. See 'Session Number' for full description."
        type: tier
        tiers: [1,2,5,10,15,20,50,100]
        style: integer
        sql: ${visit_number} ;;
      }

      dimension: visit_start_seconds {
        label: "Visit Start Seconds"
        type: number
        sql: ${TABLE}.visitStarttime ;;
        hidden: yes
      }

      dimension: custom_dimensions {
        hidden: yes
        type: string
        sql: ${TABLE}.customdimensions ;;
      }

      dimension: custom_variables {
        hidden: yes
        type: string
        sql: ${TABLE}.customvariables ;;
      }

      dimension_group: visit_start {
        # Dimension(s) are labeled with 'Visit' to match column names in database, but relabeled in Explore to match most recent Google Analytics nomenclature (i.e. 'Session' rather than 'Visit')
        label: "Session Start"
        description: "Timestamp of the start of the Session. References visitStartTime field. Can differ from 'Date' field based on timezone."
        type: time
        timeframes: [
          raw,
          hour_of_day,
          date,
          day_of_week,
          day_of_week_index,
          day_of_month,
          day_of_year,
          fiscal_quarter,
          fiscal_quarter_of_year,
          week,
          month,
          month_name,
          month_num,
          quarter,
          quarter_of_year,
          week_of_year,
          year
        ]
        sql: TIMESTAMP_SECONDS(${TABLE}.visitStarttime);;
        convert_tz: no
      }

      ########## MEASURES ##############

      measure: first_time_sessions {
        group_label: "Session"
        label: "New Sessions"
        description: "The total number of sessions for the requested time period where the visitNumber equals 1."
        type: count_distinct
        allow_approximate_optimization: yes
        sql: ${id} ;;

        filters: {
          field: visit_number
          value: "1"
        }

        value_format_name: formatted_number
        # drill_fields: [source_medium, first_time_sessions]
      }

      measure: first_time_visitors {
        view_label: "Audience"
        group_label: "User"
        label: "New Users"
        description: "The total number of users for the requested time period where the visitNumber equals 1."
        type: count_distinct
        allow_approximate_optimization: yes
        sql: ${full_visitor_id} ;;

        filters: {
          field: visit_number
          value: "1"
        }

        value_format_name: formatted_number
        # drill_fields: [source_medium, first_time_visitors]
      }

      measure: percent_new_sessions {
        view_label: "Session"
        group_label: "Session"
        label: "% New Sessions"
        description: "The percentage of sessions by users who had never visited the property before."
        type: number
        sql: ${first_time_sessions}/NULLIF(${visits_total}, 0) ;;
        value_format_name: percent_1
        # drill_fields: [source_medium,first_time_visitors, visits_total, percent_new_sessions]
      }

      measure: percent_new_visitors {
        view_label: "Audience"
        group_label: "User"
        label: "% New Users"
        description: "The total number of users for the requested time period where the visitNumber is not 1."
        type: number
        sql: ${first_time_sessions} / ${unique_visitors};;

        value_format_name: percent_1
        # drill_fields: [source_medium, returning_visitors]
      }

      measure: percent_returning_visitors {
        view_label: "Audience"
        group_label: "User"
        label: "% Returning Users"
        description: "The total number of users for the requested time period where the visitNumber is not 1."
        type: number
        sql: ${returning_visitors} / ${unique_visitors};;

        value_format_name: percent_1
        # drill_fields: [source_medium, returning_visitors]
      }

      measure: returning_visitors {
        view_label: "Audience"
        group_label: "User"
        label: "Returning Users"
        description: "The total number of users for the requested time period where the visitNumber is not 1."
        type: count_distinct
        allow_approximate_optimization: yes
        sql: ${full_visitor_id};;

        filters: {
          field: visit_number
          value: "<> 1"
        }

        value_format_name: formatted_number
        # drill_fields: [source_medium, returning_visitors]
      }

      measure: sessions_per_user {
        view_label: "Audience"
        group_label: "User"
        label: "Average Sessions per User"
        description: "(Total Sessions / Unique Visitors). Should only be used at the session-level."
        type: number
        sql: ${visits_total}/NULLIF(${unique_visitors}, 0) ;;

        value_format_name: decimal_2
        # drill_fields: [source_medium, visits_total, unique_visitors, sessions_per_user]
      }

      measure: unique_visitors {
        view_label: "Audience"
        group_label: "User"
        label: "Users"
        description: "The total number of users for the requested time period."
        type: count_distinct
        allow_approximate_optimization: yes
        sql: ${full_visitor_id} ;;

        value_format_name: formatted_number
        # drill_fields: [client_id, account.id, visit_number, hits_total, page_views_total, time_on_site_total]
      }


# Scenario 1 (S1): You are viewing a single GA 360 property


# S1 TODO: Update the sql_table_name with the customer’s schema name.
# Single property
  # sql_table_name: `@{SCHEMA_NAME}.@{GA360_TABLE_NAME}` ;;

  # dimension_group: partition {
  #   # Date that is parsed from the table name. Required as a filter to avoid accidental massive queries
  #   label: ""
  #   view_label: "Session"
  #   description: "Date based on the day the session was added to the database. Matches date in Google Analytics UI, but may not match 'Session Start Date'."
  #   type: time
  #   timeframes: [
  #     date,
  #     day_of_week,
  #     day_of_week_index,
  #     day_of_month,
  #     day_of_year,
  #     fiscal_quarter,
  #     fiscal_quarter_of_year,
  #     week,
  #     month,
  #     month_name,
  #     month_num,
  #     quarter,
  #     quarter_of_year,
  #     week_of_year,
  #     year
  #   ]
  #   sql: TIMESTAMP(
  #           PARSE_DATE(
  #             '%Y%m%d'
  #               , REGEXP_EXTRACT(
  #                 _TABLE_SUFFIX
  #                   , r'^\d\d\d\d\d\d\d\d'
  #               )
  #           )
  #         );;
  #   convert_tz: no
  # }


# # Scenario 2 (S2): You are viewing Multiple  GA 360 properties in the same BQ project and are leveraging analytics across multiple properties
# #   TODO: update the always_filter in the model
# #   TODO: Uncomment the sql_table_name and update the FROM statement and property nickname
#   sql_table_name:
#   (
#     SELECT *, 'Property1' as property, TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'^\d\d\d\d\d\d\d\d'))) AS partition_date
#     FROM `@{SCHEMA_NAME}.@{GA360_TABLE_NAME}`
#     WHERE {% condition partition_filter %} TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'^\d\d\d\d\d\d\d\d'))) {% endcondition %}
#     UNION ALL
#     SELECT *, 'Property2' as property, TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'^\d\d\d\d\d\d\d\d'))) AS partition_date
#     FROM `@{SCHEMA_NAME}.@{GA360_TABLE_NAME}`
#     WHERE {% condition partition_filter %} TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'^\d\d\d\d\d\d\d\d'))) {% endcondition %}
#   );;


# # S2 TODO: Uncomment field
#   filter: partition_filter {
#     type: date
#     default_value: "@{EXPLORE_DATE_FILTER}"
#   }

# # S2 TODO: Uncomment field and comment out the partition date above
  dimension_group: partition {
    # Date that is parsed from the table name. Required as a filter to avoid accidental massive queries
    label: ""
    view_label: "Session"
    description: "Date based on the day the session was added to the database. Matches date in Google Analytics UI, but may not match 'Session Start Date'."
    type: time
    timeframes: [
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      fiscal_quarter,
      fiscal_quarter_of_year,
      week,
      month,
      month_name,
      month_num,
      quarter,
      quarter_of_year,
      week_of_year,
      year
    ]
    sql: ${TABLE}.partition_date ;;
    # can_filter: no
    convert_tz: no
  }

# # S2 TODO: Uncomment out the field and update the property and website names
#   dimension: property {
#     hidden: yes
#     suggestions: ["Website1","Website2"]
#     sql: CASE
#           WHEN ${TABLE}.property = "Property1" THEN "Website1"
#           WHEN ${TABLE}.property = "Property2" THEN "Website2"
#           ELSE NULL
#         END
#         ;;
#   }


# #Scenario 3 (S3): Multiple properties but allow specific users to view their own properties

# # S3 TODO: Create a user attribute ga_360_schema and assign values for each user.
        # Uncomment out the sql_table_name below

# # Single property
  # sql_table_name: `{{ _user_attributes['ga_360_schema'] }}.@{GA360_TABLE_NAME} ;;


# # TODO: CUSTOMIZE GOALS HERE ####

# # Goals measure how well your site or app fulfills your target objectives. A goal represents a completed activity,
# # called a conversion, that contributes to the success of your business. Examples of goals include making a purchase
# # (for an ecommerce site), completing a game level (for a mobile gaming app), or submitting a contact information
# # form (for a marketing or lead generation site).

# # Find more information here: https://support.google.com/analytics/answer/1012040?hl=en&ref_topic=6150889

# # "Selected_goal_conversions", "selected_goal_conversion_rate", and "selected_goal_conversion_value" are the
# # measures used in the application interface. Make sure that these measures contain all of the possible goals.
# # The goal will be selected using a filter in the Application UI.


  # goal definitions

  dimension: demo_goal_hit {
    type: yesno
    sql: (SELECT h.page.pagePath FROM UNNEST(${ga_sessions.hits}) h
      WHERE h.page.pagePath = "/asearch.html" LIMIT 1) IS NOT NULL ;;
  }

  # dimension: company_goal_hit {
  #   type: yesno
  #   sql: (SELECT h.page.pagePath FROM UNNEST(${ga_sessions.hits}) h
  #     WHERE h.page.pagePath = "/company" LIMIT 1) IS NOT NULL ;;
  # }

  # dimension: team_goal_hit {
  #   type: yesno
  #   sql: (SELECT h.page.pagePath FROM UNNEST(${ga_sessions.hits}) h
  #     WHERE h.page.pagePath = "/team" LIMIT 1) IS NOT NULL ;;
  # }


  # dimension: home_page_goal {
  #   type: yesno
  #   sql: (SELECT h.page.pagePath FROM UNNEST(${ga_sessions.hits}) h
  #     WHERE h.page.pagePath = "/goal" LIMIT 1) IS NOT NULL ;;
  # }

  # dimension: about_page_goal {
  #   type: yesno
  #   sql: (SELECT h.page.pagePath FROM UNNEST(${ga_sessions.hits}) h
  #     WHERE h.page.pagePath = "/about" LIMIT 1) IS NOT NULL ;;
  # }

  # dimension: conversion_value {
  #   sql: 100 ;;
  # }


  # value of goal

  # dimension: value_of_conversion {
  #   type: number
  #   hidden: yes
  #   sql: 100 ;;
  #   value_format_name: usd
  # }

  # # filter for goal completion to mark as converted

  # measure: demo_goal_conversions {
  #   group_label: "Goals"
  #   type: count
  #   filters: {
  #     field: demo_goal_hit
  #     value: "Yes"
  #   }
  # }

  # measure: company_goal_conversions {
  #   group_label: "Goals"
  #   type: count
  #   filters: {
  #     field: company_goal_hit
  #     value: "Yes"
  #   }
  # }

  # define conversion rate

  # measure: demo_goal_conversion_rate {
  #   description: "URL hits / Sessions"
  #   group_label: "Goals"
  #   type: number
  #   sql: 1.0 * (${demo_goal_conversions}/NULLIF(${ga_sessions.visits_total},0));;
  #   value_format_name: percent_2
  # }

  # measure: company_goal_conversion_rate {
  #   description: "URL hits / Sessions"
  #   group_label: "Goals"
  #   type: number
  #   sql: 1.0 * (${company_goal_conversions}/NULLIF(${ga_sessions.visits_total},0));;
  #   value_format_name: percent_2
  # }

  # measure: demo_goal_conversion_value {
  #   description: "URL Conversions * Value"
  #   group_label: "Goals"
  #   type: number
  #   sql: 1.0 * (${demo_goal_conversions}) * (${value_of_conversion});;
  #   value_format_name: usd
  # }

  # measure: company_goal_conversion_value {
  #   description: "URL Conversions * Value"
  #   group_label: "Goals"
  #   type: number
  #   sql: 1.0 * (${company_goal_conversions}) * (${value_of_conversion});;
  #   value_format_name: usd
  # }

  # TODO: you need to add all the goals here as well

  # parameter: goal_selection {
  #   type: string
  #   suggestions: ["No Selection","Demo","Company"]
  #   allowed_value: {value: "No Selection"}
  #   allowed_value: {value: "Demo"}
  #   allowed_value: {value: "Company"}
  #   default_value: "'No Selection'"
  # }

  # measure: selected_goal_conversions {
  #   type: number
  #   sql: {% if goal_selection._parameter_value == "'Demo'" %}${demo_goal_conversions}
  #         {% elsif goal_selection._parameter_value == "'Company'" %}${company_goal_conversions}
  #         {% elsif goal_selection._parameter_value == "'No Selection'" %}NULL
  #         {% endif %} ;;
  #   label_from_parameter: goal_selection
  #   value_format_name: decimal_0
  # }

  # measure: selected_goal_conversion_rate {
  #   type: number
  #   sql: {% if goal_selection._parameter_value == "'Demo'" %}${demo_goal_conversion_rate}
  #       {% elsif goal_selection._parameter_value == "'Company'" %}${company_goal_conversion_rate}
  #       {% elsif goal_selection._parameter_value == "'No Selection'" %}NULL
  #         {% endif %} ;;
  #   label_from_parameter: goal_selection
  #   value_format_name: percent_2
  # }

  # measure: selected_goal_conversion_value {
  #   type: number
  #   sql: {% if goal_selection._parameter_value == "'Demo'" %}${demo_goal_conversion_value}
  #       {% elsif goal_selection._parameter_value == "'Company'" %}${company_goal_conversion_value}
  #       {% elsif goal_selection._parameter_value == "'No Selection'" %}NULL
  #         {% endif %} ;;
  #   label_from_parameter: goal_selection
  #   value_format_name: usd
  # }



}
