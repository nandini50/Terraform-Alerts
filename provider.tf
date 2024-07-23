terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.40.1"
    }
  }
}

provider "newrelic" {
  # Configuration options
  account_id="4440025"
  api_key="NRAK-8XNT14ZZV0FN7LF2UPFH6O237JX"
  region="US"
}