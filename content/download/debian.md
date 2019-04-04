---
title: "Sqitch on Debian"
description: Use Apt to install Sqitch on Debian and Ubuntu.
id: install
---

{{% section class="ubuntu" %}}

The [Debian Sqitch Apt] package tends to lag behind several versions, but
provides easy access to Debian and Ubuntu users. For example, to install Sqitch
with [PostgreSQL] and [SQLite] support:

    apg-get install sqitch libdbd-pg-perl postgresql-client libdbd-sqlite3-perl sqlite3

An alternative that gets you the latest version of Sqitch is to just `apt-get`
the external dependencies, and then build Sqitch itself via [cpanminus]. To
install Sqitch with [MySQL] support, for example:

    apt-get install build-essential cpanminus perl perl-doc mysql libdbd-mysql-perl
    cpanm --quiet --notest App::Sqitch

The client and connection libraries for each engine are:

*   PostgreSQL: `libdbd-pg-perl postgresql-client`
*   SQLite: `libdbd-sqlite3-perl sqlite3`
*   Oracle: `libdbd-oracle-perl`
*   MySQL: `libdbd-mysql-perl mysql-client`
*   Firebird 3.0 (Debian 9 and later): `libdbd-firebird-perl firebird3.0-utils`
*   Firebird Classic (Debian 8 and earlier): `libdbd-firebird-perl firebird2.5-classic`
*   Firebird Super (Debian 8 and earlier): `libdbd-firebird-perl firebird2.5-super`
*   Vertica, Exasol, Snowflake: `libdbd-odbc-perl`

  [Debian Sqitch Apt]: https://packages.debian.org/stretch/sqitch
  [cpanminus]: https://cpanmin.us
  [PostgreSQL]: https://postgresql.org/
    "PostgreSQL: The World's Most Advanced Open Source Relational Database"
  [SQLite]: https://sqlite.org/
    "SQLite: Small. Fast. Reliable. Choose any three."

{{% /section %}}
