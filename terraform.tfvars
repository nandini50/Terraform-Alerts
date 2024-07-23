# alerts_variable_condition =  {
# name_1 =  "browser_alert_condition1"
# name_2= "browser_alert_condition2"
# name_3= "browser_alert_condition3"
# name_4= "browser_alert_condition4"
# metric_1 = "total_page_load" 
# metric_2 = "ajax_response_time" 
# metric_4= "dom_processing" 
# # warning ={
# #      duration      = 5
# #     operator      = "above"
# #     priority      = "warning"
# #     threshold     = "1"
# #     time_function = "all"

# # }
# # critical={
# #    duration      = 5
# #     operator      = "above"
# #     priority      = "critical"
# #     threshold     = "2"
# #     time_function = "all"
# # }

# # critical ={
# #  critical_duration      = 5
# #   critical_operator      = "above"
# #   critical_threshold     = "2"
# #   critical_time_function = "all"
# # }
# # warning={
# #   warning_duration       = 5
# #   warning_operator       = "above"
# #   warning_threshold      = "1"
# #   warning_time_function  = "all"


# # }
# # }



#  alert_conditions= {

#   }
#   default = {
#     "condition1" = {
#       name                = "Alert Condition 1"
#       metric              = "response_time"
#       critical_duration   = 5
#       critical_operator   = "above"
#       critical_threshold  = 1.0
#       critical_time_function = "all"
#       warning_duration    = 5
#       warning_operator    = "above"
#       warning_threshold   = 0.5
#       warning_time_function = "all"
#     }
#     "condition2" = {
#       name                = "Alert Condition 2"
#       metric              = "error_rate"
#       critical_duration   = 5
#       critical_operator   = "above"
#       critical_threshold  = 2.0
#       critical_time_function = "all"
#       warning_duration    = 5
#       warning_operator    = "above"
#       warning_threshold   = 1.0
#       warning_time_function = "all"
#     }
#     "condition4" = {
#       name                = "Alert Condition 4"
#       metric              = "page_load"
#       critical_duration   = 5
#       critical_operator   = "above"
#       critical_threshold  = 3.0
#       critical_time_function = "all"
#       warning_duration    = 5
#       warning_operator    = "above"
#       warning_threshold   = 1.5
#       warning_time_function = "all"
#     }
#   }
# }



alerts_condition = {
  "0"={
       name                = "Alert Condition 1"
      # metric              = "response_time"
       critical=true
       warning=true
      critical_duration   = 3600
      critical_operator   = "above"
      critical_threshold  = 1.0
      critical_time_function = "all"
      warning_duration    = 3600
      warning_operator    = "above"
      warning_threshold   = 0.5
      warning_time_function = "all"
      nrql_query="select count(*) from transaction"
  }
  "1"={   name                = "Alert Condition 2"
   critical=true
      warning=true
      critical_duration   = 3600
      critical_operator   = "above"
      critical_threshold  = 2.0
      critical_time_function = "all"
      warning_duration    = 3600
      warning_operator    = "above"
      warning_threshold   = 1.0
      warning_time_function = "all"
      nrql_query="select count(*) from transaction"
  }
  
  "2"= {
   name                = "Alert Condition 3"
    critical=true
    warning=true
      critical_duration   = 3600
      critical_operator   = "above"
      critical_threshold  = 2.0
      critical_time_function = "all"
      warning_duration    = 3600
      warning_operator    = "above"
      warning_threshold   = 1.0
      warning_time_function = "all"
      nrql_query="select count(*) from transaction"
  }
  
 "3"= {
     name                = "Alert Condition 4"
     critical=true
     warning=true
      critical_duration   = 3600
      critical_operator   = "above"
      critical_threshold  = 3.0
      critical_time_function = "all"
      warning_duration    = 3600
      warning_operator    = "above"
      warning_threshold   = 1.5
      warning_time_function = "all"
      nrql_query="select count(*) from transaction"
  }
}