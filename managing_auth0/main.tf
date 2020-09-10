provider "auth0" {

}

resource "auth0_role" "org_admin" {
  name = "org_admin"
}

resource "auth0_role" "org_read" {
  name = "org_read"
}

resource "auth0_role" "org_write" {
  name = "org_write"
}

resource "auth0_user" "yulei" {
  connection_name = "google-oauth2"
  email      = "yulei.liu@gmail.com"
  roles      = [auth0_role.org_admin.id]
}