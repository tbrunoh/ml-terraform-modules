# Terraform Modules

> Reusable Azure modules used by the Inclusive Skin AI infrastructure.

**Part of [Inclusive Skin AI](https://github.com/tbrunoh#inclusive-skin-ai)**, an end to end system for skin analysis built for melanin-rich skin first. Most skin analysis models learn from lighter skin and misread darker tones; this project starts from the other end.

## Modules

| Module | Creates |
|:--|:--|
| `blob-storage` | Storage account |
| `container-registry` | Azure Container Registry |
| `cosmosdb` | Cosmos DB account |
| `pgsql` | PostgreSQL flexible server, database and firewall rule |

## Usage

```hcl
module "pgsql" {
  source            = "git::https://github.com/tbrunoh/ml-terraform-modules.git//pgsql?ref=v0.0.2"
  pg_server_name    = "my-server"
  rg_name           = "my-resource-group"
  rg_location       = "centralus"
  pg_admin_password = var.pg_admin_password
}
```

Pin a tag with `ref=` so module changes never surprise a deployment.

## The Inclusive Skin AI repositories

| Layer | Repository | Role |
|:--|:--|:--|
| MODEL | [ml-ai-skintone](https://github.com/tbrunoh/ml-ai-skintone) | Skin tone classifier on the Monk Skin Tone scale |
| MODEL | [ml-ai-skin-conditions](https://github.com/tbrunoh/ml-ai-skin-conditions) | Skin condition model package, early stage |
| CORE | [ml-ai-core](https://github.com/tbrunoh/ml-ai-core) | Shared PyTorch base classes and utilities |
| SERVE | [ml-ai-client-api](https://github.com/tbrunoh/ml-ai-client-api) | FastAPI inference service for the skin tone model |
| DATA | [ml-data-upload-api](https://github.com/tbrunoh/ml-data-upload-api) | FastAPI upload service feeding storage and labeling |
| DATA | [ml-data-labelling-ui](https://github.com/tbrunoh/ml-data-labelling-ui) | Label Studio deployment for image annotation |
| PRODUCT | [ml-ai-skintone-ui](https://github.com/tbrunoh/ml-ai-skintone-ui) | Next.js skin tone analysis app |
| PRODUCT | [ml-landing-page](https://github.com/tbrunoh/ml-landing-page) | Next.js landing page for the consumer app |
| INFRA | [ml-terraform](https://github.com/tbrunoh/ml-terraform) | Azure infrastructure as code |
| INFRA | **ml-terraform-modules** | Reusable Terraform modules |
| RESEARCH | [ml-ai-samples](https://github.com/tbrunoh/ml-ai-samples) | Reference PyTorch experiments |

## Status

The cloud environment behind this project has been retired. The code is published as a reference implementation, and every endpoint, key and project identifier in configuration files is a placeholder you replace with your own.

## License

Licensed under the [Apache License 2.0](LICENSE).

---

<sub>Maintained by <a href="https://github.com/tbrunoh">Tom Bruno</a>. Original engineering by Nelson Kigen. Part of <a href="https://github.com/tbrunoh#inclusive-skin-ai">Inclusive Skin AI</a>.</sub>
