data "external_schema" "django" {
  program = [
    "atlas-provider-django",
    "--dialect", "mysql", // mysql | mariadb | postgresql | sqlite | mssql
  ]
}

env "django" {
  src = data.external_schema.django.url
  dev = "docker://mysql/8/dev"
}