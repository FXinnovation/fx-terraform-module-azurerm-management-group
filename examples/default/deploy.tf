resource "random_string" "this" {
  length  = 6
  upper   = false
  special = false
}


module "example" {
  source = "../.."

  enabled = true

  display_names = ["toto${random_string.this.result}", "fofo${random_string.this.result}"]

}
