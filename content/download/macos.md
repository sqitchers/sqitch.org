---
title: "Sqitch on macOS"
description: Install Sqitch from Homebrew on macOS.
id: install
---

{{% section class="brew" %}}

There are two methods to quickly install Sqitch on macOS using [Homebrew]. Use
the [Sqitch Homebrew formula] to manage [PostgreSQL], [SQLite], and [MySQL]
databases. It can also manage [Vertica], [Exasol], and [Snowflake] databases
with the installation of additional client libraries, described below.

``` sh
brew install sqitch
```

Use the [Sqitch Homebrew Tap] to manage [Oracle] or [Firebird] databases, as
detailed below.

### Postgres, SQLite, MySQL

The [Sqitch Homebrew formula] installs all the libraries needed to manage
[SQLite], [MySQL], [MariaDB], [PostgreSQL], [YugabyteDB], and [CockroachDB]
databases.

### Vertica

To manage [Vertica] databases, Sqitch depends on the presence of the Vertica
ODBC driver and the `vsql` client. [Download][vsql] and install the ODBC and
`vsql` packages for macOS prior to using Sqitch to manage Vertica databases.

### Exasol

To manage [Exasol] databases, Sqitch depends on the presence of the Exasol ODBC
driver and the `EXAplus` client. [Download][exaplus] and install the ODBC and
`EXAplus` packages for macOS prior to using Sqitch to manage Exasol databases.

### Snowflake

To manage [Snowflake] databases, Sqitch depends on the presence of the Snowflake
ODBC driver and `snowsql` client. Use Homebrew to install [SnowSQL]:

``` sh
brew install --cask snowflake-snowsql
```

Download and install the [ODBC driver] macOS prior to using Sqitch to manage
Snowflake databases.

### Firebird

Use the [Sqitch Homebrew Tap] to manage [Firebird] databases. It depends on the
presence of a Firebird database installation, both to build the necessary
database driver at build time, and to use the `isql` client to manage databases
at runtime. Alas, there appears to be no Homebrew formula for Firebird, so
you'll have to manually [download][fbsql] and install it, then install Sqitch
from the tap like so:

``` sh
brew tap sqitchers/sqitch
brew install sqitch --with-firebird-support
```
If no Firebird driver library is found, the build will fail.

### Oracle

Use the [Sqitch Homebrew Tap] to manage [Oracle] databases. This feature depends
on the presence of the [Oracle Instant Client] Basic and SDK packages to build
the necessary database driver at build time, plus the SQL\*Plus package to
manage databases at runtime. If no Instant Client files are found, the build
will fail.

Sadly, [System Integrity Protection] must be disabled in order to build Sqitch
with Oracle support. This is to allow the setting of the `$DYLD_LIBRARY_PATH`
environment variable, which is required for Oracle support in Sqitch. [Here's
how].

With SIP disabled, set `$HOMEBREW_ORACLE_HOME` to the full path to the directory
for Instant Client. This will allow the build to find the libraries necessary to
complete the build with Oracle support. To use Sqitch with Oracle, you will
need to set the `$ORACLE_HOME` and `$DYLD_LIBRARY_PATH` variables to point to
the Instant Client, something like:

``` sh
export ORACLE_HOME=/usr/local/instantclient_12_2
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$ORACLE_HOME
brew install sqitch --with-oracle-support
```

  [Homebrew]: https://brew.sh "The Missing Package Manager for macOS"
  [Sqitch Homebrew formula]: https://formulae.brew.sh/formula/sqitch
    "Sqitch Homebrew Formula"
  [Sqitch Homebrew Tap]: https://github.com/sqitchers/homebrew-sqitch/
  [PostgreSQL]: https://postgresql.org/
    "PostgreSQL: The World's Most Advanced Open Source Relational Database"
  [SQLite]: https://sqlite.org/
    "SQLite: Small. Fast. Reliable. Choose any three."
  [the docs]: https://github.com/sqitchers/homebrew-sqitch/#readme
  [Vertica]: https://www.vertica.com/ "Vertica Analytics Platform"
  [Exasol]: https://www.exasol.com/ "Exasol: The In-Memory Database Built for Analytics"
  [Snowflake]: https://www.snowflake.com/ "Snowflake: The Data Cloud"
  [vsql]: https://www.vertica.com/download/vertica/client-drivers/
    "Vertica Downloads: Client Drivers"
  [exaplus]: https://downloads.exasol.com "Exasol Downloads"
  [SnowSQL]: https://docs.snowflake.net/manuals/user-guide/snowsql-install-config.html
    "Snowflake Documentation: Installing SnowSQL”"
  [ODBC driver]: https://docs.snowflake.net/manuals/user-guide/odbc-download.html
    "Snowflake Documentation: “Downloading the ODBC Driver”"
  [Oracle]: https://www.oracle.com/database/ "Oracle Database"
  [Firebird]: https://www.firebirdsql.org "Firebird open source database"
  [fbsql]: https://www.firebirdsql.org/en/server-packages/
    "Firebird Server Packages"
  [Oracle Instant Client]: https://www.oracle.com/technetwork/topics/intel-macsoft-096467.html
    "Oracle Instant Client Downloads for macOS"
  [System Integrity Protection]: https://support.apple.com/en-us/HT204899
    "About System Integrity Protection on your Mac"
  [Here's how]: https://www.imore.com/how-turn-system-integrity-protection-macos
    "iMore: “How to turn off System Integrity Protection on your Mac”"
  [MySQL]: https://www.mysql.com "MySQL: The world's most popular open source database"
  [MariaDB]: https://mariadb.org "MariaDB Server: The open source relational database"
  [YugabyteDB]: https://www.yugabyte.com/yugabytedb/
    "YugabyteDB: The open source distributed SQL database for cloud native transactional applications"
  [CockroachDB]: https://www.cockroachlabs.com/product/
    "CockroachDB: The world’s most evolved cloud SQL database"

{{% /section %}}
