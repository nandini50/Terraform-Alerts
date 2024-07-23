# data "newrelic_entity" "app" {
#   name = "browserapp"
#   type = "APPLICATION"
#   domain = "BROWSER"

# }


# resource "newrelic_alert_condition" "browser_alert_condition1" {
#   policy_id = newrelic_alert_policy.browser_alert1.id

#   name        = var.alerts_variable_condition.name_1
#   type        = "browser_metric"
#   entities    = [data.newrelic_entity.app.application_id]
#   metric      = var.alerts_variable_condition.metric_1
# #   runbook_url = "https://www.example.com"
#   condition_scope = "application"


  



#    warning  {
#     duration      = 5
#     operator      = "above"
#     priority      = "warning"
#     threshold     = "1"
#     time_function = "all"
#   }

# }



# resource "newrelic_alert_condition" "browser_alert_condition2" {
#   policy_id = newrelic_alert_policy.browser_alert1.id

#   name        = var.alerts_variable_condition.name_2
#   type        = "browser_metric"
#   entities    = [data.newrelic_entity.app.application_id]
#   metric      = var.alerts_variable_condition.metric_2
# #   runbook_url = "https://www.example.com"
#   condition_scope = "application"


  

#   critical {
#     duration      = 5
#     operator      = "above"
#     priority      = "critical"
#     threshold     = "2"
#     time_function = "all"
#   }
#    warning {
#     duration      = 5
#     operator      = "above"
#     priority      = "warning"
#     threshold     = "1"
#     time_function = "all"
#   }

# }


# resource "newrelic_nrql_alert_condition" "browser_alert_condition3" {
#   account_id                     = 4440025
#   policy_id                      = newrelic_alert_policy.browser_alert1.id
#   type                           = "static"
#   name                           = var.alerts_variable_condition.name_3
#   description                    = "Alert when transactions are taking too long"
#   # runbook_url                    = "https://www.example.com"
#   enabled                        = true
#   violation_time_limit_seconds   = 3600
#   fill_option                    = "static"
#   fill_value                     = 1.0
#   aggregation_window             = 60
#   aggregation_method             = "event_flow"
#   aggregation_delay              = 120
#   expiration_duration            = 120

#   open_violation_on_expiration   = true
#   close_violations_on_expiration = true
#   slide_by                       = 30

#   nrql {
#     query = "SELECT average(duration) FROM Transaction where appName = 'browserapp'"
#   }

#   critical {
#     operator              = "above"
#     threshold             = 5.5
#     threshold_duration    = 300
#     threshold_occurrences = "ALL"
#   }

#   warning {
#     operator              = "above"
#     threshold             = 3.5
#     threshold_duration    = 600
#     threshold_occurrences = "ALL"
#   }
# }
# resource "newrelic_alert_condition" "browser_alert_condition4" {
#   policy_id = newrelic_alert_policy.browser_alert1.id

#   name        = var.alerts_variable_condition.name_4
#   type        = "browser_metric"
#   entities    = [data.newrelic_entity.app.application_id]
#   metric      = var.alerts_variable_condition.metric_4
# #   runbook_url = "https://www.example.com"
#   condition_scope = "application"


  

#   critical{
#     duration      = 5
#     operator      = "above"
#     priority      = "critical"
#     threshold     = "2"
#     time_function = "all"
#   }
#    warning {
#     duration      = 5
#     operator      = "above"
#     priority      = "warning"
#     threshold     = "1"
#     time_function = "all"
#   }

# }





# resource "newrelic_alert_condition" "browser_alert_condition1" {
#   policy_id = newrelic_alert_policy.browser_alert1.id

#   name            = var.alerts_variable_condition.name_1
#   type            = "browser_metric"
#   entities        = [data.newrelic_entity.app.application_id]
#   metric          = var.alerts_variable_condition.metric_1
#   condition_scope = "application"

#   critical {
#     duration      = var.alerts_variable_condition.critical_duration
#     operator      = var.alerts_variable_condition.critical_operator
#     priority      = "critical"
#     threshold     = var.alerts_variable_condition.critical_threshold
#     time_function = var.alerts_variable_condition.critical_time_function
#   }

#   warning {
#     duration      = var.alerts_variable_condition.warning_duration
#     operator      = var.alerts_variable_condition.warning_operator
#     priority      = "warning"
#     threshold     = var.alerts_variable_condition.warning_threshold
#     time_function = var.alerts_variable_condition.warning_time_function
#   }
# }

# resource "newrelic_alert_condition" "browser_alert_condition2" {
#   policy_id = newrelic_alert_policy.browser_alert1.id

#   name            = var.alerts_variable_condition.name_2
#   type            = "browser_metric"
#   entities        = [data.newrelic_entity.app.application_id]
#   metric          = var.alerts_variable_condition.metric_2
#   condition_scope = "application"

#   critical {
#     duration      = var.alerts_variable_condition.critical_duration
#     operator      = var.alerts_variable_condition.critical_operator
#     priority      = "critical"
#     threshold     = var.alerts_variable_condition.critical_threshold
#     time_function = var.alerts_variable_condition.critical_time_function
#   }

#   warning {
#     duration      = var.alerts_variable_condition.warning_duration
#     operator      = var.alerts_variable_condition.warning_operator
#     priority      = "warning"
#     threshold     = var.alerts_variable_condition.warning_threshold
#     time_function = var.alerts_variable_condition.warning_time_function
#   }
# }

# resource "newrelic_nrql_alert_condition" "browser_alert_condition3" {
#   account_id                     = 4440025
#   policy_id                      = newrelic_alert_policy.browser_alert1.id
#   type                           = "static"
#   name                           = var.alerts_variable_condition.name_3
#   description                    = "Alert when transactions are taking too long"
#   enabled                        = true
#   violation_time_limit_seconds   = 3600
#   fill_option                    = "static"
#   fill_value                     = 1.0
#   aggregation_window             = 60
#   aggregation_method             = "event_flow"
#   aggregation_delay              = 120
#   expiration_duration            = 120
#   open_violation_on_expiration   = true
#   close_violations_on_expiration = true
#   slide_by                       = 30

#   nrql {
#     query = "SELECT average(duration) FROM Transaction where appName = 'browserapp'"
#   }

#   critical {
#     operator              = "above"
#     threshold             = 5.5
#     threshold_duration    = 300
#     threshold_occurrences = "ALL"
#   }

#   warning {
#     operator              = "above"
#     threshold             = 3.5
#     threshold_duration    = 600
#     threshold_occurrences = "ALL"
#   }
# }

# resource "newrelic_alert_condition" "browser_alert_condition4" {
#   policy_id = newrelic_alert_policy.browser_alert1.id

#   name            = var.alerts_variable_condition.name_4
#   type            = "browser_metric"
#   entities        = [data.newrelic_entity.app.application_id]
#   metric          = var.alerts_variable_condition.metric_4
#   condition_scope = "application"

#   critical {
#     duration      = var.alerts_variable_condition.critical_duration
#     operator      = var.alerts_variable_condition.critical_operator
#     priority      = "critical"
#     threshold     = var.alerts_variable_condition.critical_threshold
#     time_function = var.alerts_variable_condition.critical_time_function
#   }

#   warning {
#     duration      = var.alerts_variable_condition.warning_duration
#     operator      = var.alerts_variable_condition.warning_operator
#     priority      = "warning"
#     threshold     = var.alerts_variable_condition.warning_threshold
#     time_function = var.alerts_variable_condition.warning_time_function
#   }
# }




# data "newrelic_entity" "app" {
#   name = "browserapp"
#   type = "application"
# }

# resource "newrelic_alert_policy" "browser_alert1" {
#   name = "Browser Alert Policy 1"
# }

# resource "newrelic_alert_condition" "browser_alert_conditions" {
#   for_each = var.alert_conditions

#   policy_id = newrelic_alert_policy.browser_alert1.id

#   name            = each.value.name
#   type            = "browser_metric"
#   entities        = [data.newrelic_entity.app.application_id]
#   metric          = each.value.metric
#   condition_scope = "application"

#   critical {
#     duration      = each.value.critical_duration
#     operator      = each.value.critical_operator
#     priority      = "critical"
#     threshold     = each.value.critical_threshold
#     time_function = each.value.critical_time_function
#   }

#   warning {
#     duration      = each.value.warning_duration
#     operator      = each.value.warning_operator
#     priority      = "warning"
#     threshold     = each.value.warning_threshold
#     time_function = each.value.warning_time_function
#   }
# }


# data "newrelic_entity" "app" {
#   name = "browserapp"
#   type = "APPLICATION"
#   domain = "BROWSER"

# }
# resource "newrelic_alert_policy" "browser_alert1" {
#   name = "browser"
# }

# resource "newrelic_nrql_alert_condition" "browser_alert_condition3" {
#   account_id                     = 4440025
#   policy_id                      = newrelic_alert_policy.browser_alert1.id
#   type                           = "static"
#   name                           = var.alerts_variable_condition.name_3
#   description                    = "Alert when transactions are taking too long"
#   enabled                        = true
#   violation_time_limit_seconds   = 3600
#   fill_option                    = "static"
#   fill_value                     = 1.0
#   aggregation_window             = 60
#   aggregation_method             = "event_flow"
#   aggregation_delay              = 120
#   expiration_duration            = 120
#   open_violation_on_expiration   = true
#   close_violations_on_expiration = true
#   slide_by                       = 30

#   nrql {
#     query = "SELECT average(duration) FROM Transaction where appName = 'browserapp'"
#   }

#   critical {
#     operator              = "above"   #var.alert_condtion.critical.operator
#     threshold             = 5.5
#     threshold_duration    = 300
#     threshold_occurrences = "ALL"
#   }

#   warning {
#     operator              = "above"
#     threshold             = 3.5
#     threshold_duration    = 600
#     threshold_occurrences = "ALL"
#   }
# }
resource "newrelic_alert_policy" "browser_alert1" {
  name = "browser"
  incident_preference = "PER_POLICY"
}

resource "newrelic_nrql_alert_condition" "dynamic" {
  for_each                       = var.alerts_condition
  account_id                     = 4440025
  policy_id                      = newrelic_alert_policy.browser_alert1.id
  name                           = each.value.name
  # description                    = each.value.description
  enabled                        = true
  violation_time_limit_seconds   = 3600
  fill_option                    = "static"
  fill_value                     = 1.0
  aggregation_window             = 60
  aggregation_method             = "event_flow"
  aggregation_delay              = 120
  expiration_duration            = 120
  open_violation_on_expiration   = true
  close_violations_on_expiration = true
  slide_by                       = 30
 
  nrql {
    query = each.value.nrql_query
  }
critical {
    
   
      operator              = each.value.critical_operator
      threshold             = each.value.critical_threshold
      threshold_duration    = each.value.critical_duration
      threshold_occurrences = each.value.critical_time_function
    }
  

  dynamic "warning" {
    for_each = each.value.warning ? [each.value] : []
    content {
      operator              = each.value.warning_operator
      threshold             = each.value.warning_threshold
      threshold_duration    = each.value.warning_duration
      threshold_occurrences = each.value.warning_time_function
    }
 

  }
}