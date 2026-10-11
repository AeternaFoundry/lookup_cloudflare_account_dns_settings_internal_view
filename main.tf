data "cloudflare_account_dns_settings_internal_view" "account_dns_settings_internal_view_lookup" {
  for_each = var.account_dns_settings_internal_view_lookup

  account_id = each.value.account_id
  filter     = each.value.filter
  view_id    = each.value.view_id
}

