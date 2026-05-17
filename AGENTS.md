# AGENTS.md

## Project

SQL Server database project for a store management practice (`valti_shop`).

## Build

```bash
dotnet build valti_shop/valti_shop.sqlproj
```

The `.sqlproj` uses `Microsoft.Build.Sql` SDK v2.1.0 targeting SQL Server 2017 (Sql170). A `BeforeBuild` target deletes `project.assets.json` every build, forcing a restore each time — this is intentional.

## Conventions

From `README.md`:

- All database identifiers (tables, columns, etc.) in **English**
- All names in **lowercase**
- Word separations with **underscores** (snake_case)
