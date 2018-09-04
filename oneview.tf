provider "oneview" {
  ov_username   = "andrew"
  ov_password   = ""
  ov_endpoint   = "https://oneview4.host.local"
}
resource "oneview_server_profile" "default" {
  name = "terraform-server-profile"
  template = "Automation Template"
#  hardware_uri:   "" => "<computed>"
#  ilo_ip:         "" => "<computed>"
#  public_mac:     "" => "<computed>"
#  public_slot_id: "" => "<computed>"
#  type:           "" => "ServerProfileV5"


}
