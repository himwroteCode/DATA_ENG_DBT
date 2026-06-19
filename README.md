# DATA_ENG_DBT — Employees Medallion Pipeline

Production-grade dbt project that loads dummy employee source data into Snowflake bronze tables and builds a consolidated `Employees` silver table.

## Architecture

```
seeds (CSV) → DATA_ENG_DBT.DBT_BRONZE (9 tables)
            → staging views (axi / asp branches)
            → intermediate views (union, lookups, odata merge)
            → DATA_ENG_DBT.DBT_SILVER.Employees (table)
```

## Snowflake prerequisites

Run once in Snowflake (replace `<your_role>`):

```sql
CREATE DATABASE IF NOT EXISTS DATA_ENG_DBT;
CREATE SCHEMA IF NOT EXISTS DATA_ENG_DBT.DBT_BRONZE;
CREATE SCHEMA IF NOT EXISTS DATA_ENG_DBT.DBT_SILVER;
GRANT USAGE ON DATABASE DATA_ENG_DBT TO ROLE <your_role>;
GRANT ALL ON SCHEMA DATA_ENG_DBT.DBT_BRONZE TO ROLE <your_role>;
GRANT ALL ON SCHEMA DATA_ENG_DBT.DBT_SILVER TO ROLE <your_role>;
```

## Profile setup

Add or update `~/.dbt/profiles.yml` with profile `dbt_poc` (referenced in `dbt_project.yml`):

```yaml
dbt_poc:
  target: dev
  outputs:
    dev:
      type: snowflake
      account: "<your_account>"
      user: "<your_user>"
      password: "<your_password>"
      role: "<your_role>"
      database: DATA_ENG_DBT
      warehouse: "<your_warehouse>"
      schema: DBT_BRONZE
      threads: 4
```

Verify connectivity:

```bash
cd DATA_ENG_DBT
dbt debug
```

See [profiles.example.yml](profiles.example.yml) for a Snowflake profile template.

> **Note:** The project is configured for Snowflake (`DATA_ENG_DBT` database). Update `~/.dbt/profiles.yml` before running seeds or models. A DuckDB profile will not work with the bronze/silver database configuration.

## Run sequence

```bash
dbt seed --full-refresh
dbt build --select +employees
```

Individual steps:

```bash
dbt seed --full-refresh            # load 9 bronze tables from CSV
dbt run --select +employees        # staging → intermediate → silver
dbt test --select +employees       # data quality tests
```

## Schema naming (dbt Studio / Cloud)

This project uses shared medallion schemas (`DBT_BRONZE`, `DBT_SILVER`) via `macros/generate_schema_name.sql`. Without that macro, dbt Studio prefixes your personal dev schema (e.g. `DBT_HVAISH_DBT_BRONZE`).

## Expected results

- 9 tables in `DATA_ENG_DBT.DBT_BRONZE`
- 20 rows in `DATA_ENG_DBT.DBT_SILVER.Employees` (10 axi + 10 asp)
- All rows have populated `legal_id`, `hr_client_id`, and unique `hash_key`

## Project layout

| Path | Purpose |
|---|---|
| `seeds/` | Dummy source CSVs loaded into `DBT_BRONZE` |
| `models/staging/` | Per-source employee joins (axi / asp) |
| `models/intermediate/` | Union, lookup enrichment, odata merge |
| `models/silver/employees.sql` | Final `Employees` table with change hash |
| `tests/` | Row-count and merge validation tests |
