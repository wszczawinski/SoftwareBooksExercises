# Learning SQL

Exercises from the book "Learning SQL" using MySQL 8.0 + Sakila database.

## Quick Start

Start MySQL container (runs in foreground, use `-d` for detached):

```bash
podman-compose up --build
```

In a second terminal, connect to Sakila database:

```bash
podman-compose exec db mysql -uroot -pmypass sakila
```

You're now in the MySQL interactive console ready to run queries against the Sakila database.

## Workflow

SQL code is organized in `chapter_*.sql` files (one per chapter). To practice:

1. Write SQL queries in the chapter files
2. Copy/paste snippets into the interactive MySQL console to execute them
3. Experiment and verify results against book examples

## What's Here

- `chapter_*.sql` — SQL exercises by chapter
- `init/` — Sakila schema and data
- `.data/` — Persistent MySQL data

## Notes

- MySQL runs on `localhost:3306`
- Sakila imports automatically on first run
- Data persists between container restarts
