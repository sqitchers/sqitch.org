---
title: "Sqitch Source Code"
description: Download and install the Sqitch source from CPAN or GitHub.
id: install
---

{{% section class="zip" %}}

The canonical source for Sqitch releases is [CPAN]. Use the cpan or [cpanminus]
client to download and build Sqitch and its dependencies from source, as well as
the appropriate database drivers. For example, to install Sqitch with [PostgreSQL]
and [SQLite] support:

    cpan install App::Sqitch DBD::Pg DBD::SQLite

The database drivers for each engine are:

*   PostgreSQL: `DBD::Pg`
*   SQLite: `DBD::SQLite`
*   Oracle: `DBD::Oracle`
*   MySQL: `DBD::mysql`
*   Firebird: `DBD::Firebird`
*   Vertica, Exasol, Snowflake: `DBD::ODBC`

Download the source from [GitHub] or [CPAN]. Or clone the latest version:

    git clone https://github.com/sqitchers/sqitch.git

  [CPAN]: https://metacpan.org/release/App-Sqitch "Sqitch on MetaCPAN"
  [cpanminus]: https://cpanmin.us
  [GitHub]: https://github.com/sqitchers/sqitch/releases/ "Sqitch on GitHub"
  [PostgreSQL]: https://postgresql.org/
    "PostgreSQL: The World's Most Advanced Open Source Relational Database"
  [SQLite]: https://sqlite.org/
    "SQLite: Small. Fast. Reliable. Choose any three."

{{% /section %}}