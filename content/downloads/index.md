---
title: "Download Sqitch"
type: downloads
---

{{% section class="brew" %}}

Docker
------

The Sqitch Docker image and shell script is by far the quickest and easiest way
to get started with Sqitch. It supports PostgreSQL, SQLite, MySQL, and Firebird.
Simply pull the image, download the shell script, make it executable, and go:

``` bash
docker pull sqitch/sqitch
curl -L https://git.io/fAX6Z -o sqitch && chmod +x sqitch
./sqitch help
```

{{% /section %}}
{{% section class="db" %}}

Engines
-------

Each engine also requires a database-native command-line client to execute
change scripts, as well as connector libraries to allow Sqitch itself to connect
to the database.

*   PostgreSQL requires [PostgreSQL]
*   SQLite requires [SQLite]
*   MySQL requires [MySQL]
*   Firebird requires [Firebird]
*   Oracle requires [Instant Client] \(and the setting of the `$ORACLE_HOME`
    environment variable)
*   Vertica requires vsql and the Vertica ODBC driver from [Vertica]
*   Exasol requires EXAplus and the Exasol ODBC driver from [Exasol]
*   Snowflake requires SnowSQL and the Snowflake ODBC driver from [Snowflake]

  [PostgreSQL]: https://postgresql.org/
    "PostgreSQL: The World's Most Advanced Open Source Relational Database"
  [MySQL]: https://mysql.com/
    "MySQL: The world's most popular open source database"
  [SQLite]: https://sqlite.org/
    "SQLite: Small. Fast. Reliable. Choose any three."
  [Firebird]: https://www.firebirdsql.org/
    "Firebird: True universal open source database"
  [Instant Client]:
    https://www.oracle.com/technetwork/database/features/instant-client/index-097480.html
    "Oracle Instant Client: Free, light-weight, and easily installed Oracle Database tools, libraries and SDKs"
  [Vertica]: https://www.vertica.com/download/vertica/client-drivers/
    "Vertica Downloads"
  [Exasol]: https://www.exasol.com/portal/ "Exasol User Portal"
  [Snowflake]: https://docs.snowflake.net/manuals/user-guide-connecting.html
    "Connecting to Snowflake"

{{% /section %}}
