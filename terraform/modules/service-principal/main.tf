data "azuread_client_config" "current" {}

resource "azuread_application" "app" {
  display_name     = var.name
  owners           = [data.azuread_client_config.current.object_id]
  sign_in_audience = "AzureADMyOrg"

  web {
    homepage_url = "https://${var.name}"
    implicit_grant {
      access_token_issuance_enabled = false
    }
    redirect_uris = ["http://${var.name}/replyignored"]
  }
}

resource "azuread_service_principal" "spn" {
  client_id = azuread_application.app.client_id
  owners    = [data.azuread_client_config.current.object_id]
}

resource "time_rotating" "secret_expiration" {
  rotation_years = 1
}

resource "azuread_service_principal_password" "spnsecret" {
  rotate_when_changed = {
    rotation = timeadd(time_rotating.secret_expiration.id, "8760h") # One year from now
  }

  service_principal_id = azuread_service_principal.spn.id
}