variable "profile_name1" {}
variable "profile_name2" {}
variable "OneView_password" {}


provider "oneview" {
  ov_username   = "andrew"
  ov_password   = "${var.OneView_password}"
  ov_endpoint   = "https://oneview4.host.local"
}
resource "oneview_server_profile" "app" {
  name = "${var.profile_name1}"
  template = "Automation Template"
  power_state = "on"
}

resource "oneview_server_profile" "db" {
  name = "${var.profile_name2}"
  template = "Automation Template"
  power_state = "on"
}
