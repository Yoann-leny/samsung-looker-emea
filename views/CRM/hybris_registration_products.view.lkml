view: hybris_registration_products {
  sql_table_name: `@{PROJECT_NAME}.024_tr_seuk_crm.024_tr_seuk_hybris_registration_products`
    ;;

  dimension: added_services {
    type: string
    sql: ${TABLE}.Added_Services ;;
  }

  dimension: billing_number {
    type: string
    sql: ${TABLE}.Billing_Number ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: consignment_status {
    type: string
    sql: ${TABLE}.Consignment_Status ;;
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
    sql: ${TABLE}.Created_Date ;;
  }

  dimension: customer_company_name {
    type: string
    sql: ${TABLE}.customer_company_name ;;
  }

  dimension: customer_login_type {
    type: string
    sql: ${TABLE}.customer_login_type ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}.Customer_Type ;;
  }

  dimension: delivery_mode {
    type: string
    sql: ${TABLE}.Delivery_Mode ;;
  }

  dimension: delivery_order {
    type: number
    sql: ${TABLE}.Delivery_Order ;;
  }

  dimension: delivery_time_slot_selected_date_local {
    type: string
    sql: ${TABLE}.delivery_time_slot_selected_date_local ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: description_2 {
    type: string
    sql: ${TABLE}.Description_2 ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }

  dimension: ean {
    type: number
    sql: ${TABLE}.EAN ;;
  }

  dimension_group: entry {
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
    sql: ${TABLE}.Entry_Date ;;
  }

  dimension: estimated_accrued_amount {
    type: string
    sql: ${TABLE}.Estimated_Accrued_Amount ;;
  }

  dimension: estore_optin {
    type: number
    sql: ${TABLE}.estore_optin ;;
  }

  dimension: exchange_brand {
    type: string
    sql: ${TABLE}.Exchange_Brand ;;
  }

  dimension: exchange_category {
    type: string
    sql: ${TABLE}.Exchange_Category ;;
  }

  dimension: exchange_device_name {
    type: string
    sql: ${TABLE}.Exchange_Device_Name ;;
  }

  dimension: exchange_type {
    type: string
    sql: ${TABLE}.Exchange_Type ;;
  }

  dimension: exchange_value {
    type: string
    sql: ${TABLE}.exchange_value ;;
  }

  dimension: external_service_type {
    type: string
    sql: ${TABLE}.external_service_type ;;
  }

  dimension: fulfiller_dispatched_date {
    type: string
    sql: ${TABLE}.fulfiller_dispatched_date ;;
  }

  dimension: fulfiller_invoice_date {
    type: string
    sql: ${TABLE}.fulfiller_invoice_date ;;
  }

  dimension: gift {
    type: string
    sql: ${TABLE}.Gift ;;
  }

  dimension: include_demand_gross {
    type: number
    sql: ${TABLE}.Include_Demand_Gross ;;
  }

  dimension: include_demand_net {
    type: number
    sql: ${TABLE}.Include_Demand_Net ;;
  }

  dimension: include_revenue_gross {
    type: number
    sql: ${TABLE}.Include_Revenue_Gross ;;
  }

  dimension: include_revenue_net {
    type: number
    sql: ${TABLE}.Include_Revenue_Net ;;
  }

  dimension: is_registered {
    type: number
    sql: ${TABLE}.is_registered ;;
  }

  dimension: key_divisions {
    type: string
    sql: ${TABLE}.Key_Divisions ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}.Last_Modified_Date ;;
  }

  dimension: last_sale_year {
    type: number
    sql: ${TABLE}.Last_Sale_Year ;;
  }

  dimension: line_item_id {
    type: string
    sql: ${TABLE}.Line_Item_Id ;;
  }

  dimension: lineitem_sale_price {
    type: number
    sql: ${TABLE}.lineitem_sale_price ;;
  }

  dimension: lineitem_sale_price_excl_tax {
    type: string
    sql: ${TABLE}.lineitem_sale_price_Excl_Tax ;;
  }

  dimension: lineitem_status {
    type: string
    sql: ${TABLE}.Lineitem_Status ;;
  }

  dimension: list_price {
    type: number
    sql: ${TABLE}.list_price ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified_date ;;
  }

  dimension_group: named_delivery {
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
    sql: ${TABLE}.Named_Delivery_Date ;;
  }

  dimension: order_code {
    type: string
    sql: ${TABLE}.Order_Code ;;
  }

  dimension_group: order_creation {
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
    sql: ${TABLE}.Order_Creation_Date ;;
  }

  dimension: order_entry_cancelled_price {
    type: number
    sql: ${TABLE}.Order_Entry_Cancelled_Price ;;
  }

  dimension: order_entry_quantity {
    type: number
    sql: ${TABLE}.Order_Entry_Quantity ;;
  }

  dimension: order_entry_returns_price {
    type: string
    sql: ${TABLE}.Order_Entry_returns_Price ;;
  }

  dimension: order_entry_sit_returns_price {
    type: string
    sql: ${TABLE}.Order_Entry_Sit_returns_Price ;;
  }

  dimension: order_entry_total_price {
    type: number
    sql: ${TABLE}.Order_Entry_Total_Price ;;
  }

  dimension: order_entry_total_price_excl_tax {
    type: string
    sql: ${TABLE}.Order_Entry_Total_Price_Excl_Tax ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.Order_Status ;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}.Order_Type ;;
  }

  dimension: payment_mode {
    type: string
    sql: ${TABLE}.Payment_mode ;;
  }

  dimension: payment_transaction_code {
    type: string
    sql: ${TABLE}.Payment_Transaction_Code ;;
  }

  dimension: prod_category {
    type: string
    sql: ${TABLE}.prod_category ;;
  }

  dimension: product_code {
    type: string
    sql: ${TABLE}.product_code ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.Product_Type ;;
  }

  dimension: program_type {
    type: string
    sql: ${TABLE}.Program_Type ;;
  }

  dimension_group: registration {
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
    sql: ${TABLE}.RegistrationDate ;;
  }

  dimension: requested_delivery_date {
    type: string
    sql: ${TABLE}.requested_delivery_date ;;
  }

  dimension: return_deliver_order {
    type: string
    sql: ${TABLE}.Return_Deliver_Order ;;
  }

  dimension: return_order {
    type: string
    sql: ${TABLE}.Return_Order ;;
  }

  dimension: return_sales_order {
    type: string
    sql: ${TABLE}.Return_Sales_Order ;;
  }

  dimension: rewards_amount {
    type: string
    sql: ${TABLE}.Rewards_Amount ;;
  }

  dimension: rewards_customer_type {
    type: string
    sql: ${TABLE}.rewards_customer_type ;;
  }

  dimension: sales_application {
    type: string
    sql: ${TABLE}.Sales_Application ;;
  }

  dimension: sales_order {
    type: string
    sql: ${TABLE}.Sales_Order ;;
  }

  dimension: sam_id {
    type: string
    sql: ${TABLE}.SamID ;;
  }

  dimension: secondgidate {
    type: string
    sql: ${TABLE}.secondgidate ;;
  }

  dimension: sent_to_gerp {
    type: yesno
    sql: ${TABLE}.Sent_to_GERP ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.Site ;;
  }

  dimension: spend_amount {
    type: string
    sql: ${TABLE}.Spend_Amount ;;
  }

  dimension: sub_category {
    type: string
    sql: ${TABLE}.Sub_Category ;;
  }

  dimension: sub_category_fc {
    type: string
    sql: ${TABLE}.Sub_Category_FC ;;
  }

  dimension: sub_category_ga {
    type: string
    sql: ${TABLE}.Sub_Category_GA ;;
  }

  dimension: target_division {
    type: string
    sql: ${TABLE}.Target_Division ;;
  }

  dimension: voucher_code {
    type: string
    sql: ${TABLE}.Voucher_code ;;
  }

  measure: count {
    type: count
    drill_fields: [exchange_device_name, customer_company_name]
  }
}
