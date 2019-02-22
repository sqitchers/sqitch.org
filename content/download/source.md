---
title: "Sqitch Source Code"
description: Download and install the Sqitch source from CPAN or GitHub.
id: install
---

{{% section class="code" %}}

The canonical source for Sqitch releases is [CPAN]. Use the cpan or [cpanminus]
client to download and build Sqitch and its dependencies from source, as well as
the appropriate database drivers. For example, to install Sqitch with PostgreSQL
and SQLite support:

    cpan install App::Sqitch DBD::Pg DBD::SQLite

The database drivers for each engine are:

*   PostgreSQL: `DBD::Pg`
*   SQLite: `DBD::SQLite`
*   Oracle: `DBD::Oracle`
*   MySQL: `DBD::mysql`
*   Firebird: `DBD::Firebird`
*   Vertica, Exasol, Snowflake: `DBD::ODBC`

[CPAN]: https://metacpan.org/release/App-Sqitch "Sqitch on MetaCPAN"
[cpanminus]: https://cpanmin.us


The current version of Sqitch is `v0.9999`. Download the source from these
location [GitHub](https://github.com/sqitchers/sqitch/releases/) or
[CPAN](https://metacpan.org/release/App-Sqitch).

{{% /section %}}