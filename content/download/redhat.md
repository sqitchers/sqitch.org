---
title: "Sqitch on Red Hat"
description: Install dependencies with Yum and Sqitch with cpanminus.
id: install
---

{{% section class="redhat" %}}

On Red Hat-derived systems (including CentOS, Fedora, Scientific, Oracle, etc.),
use [Yum] to install dependencies, and then build Sqitch itself via [cpanminus].
For example, to install Sqitch with support for [PostgreSQL]:

    sudo yum install perl-devel perl-CPAN postgresql perl-DBD-Pg
    sudo yum group install "Development Tools"
    curl -L https://cpanmin.us | perl - --sudo App::cpanminus
    cpanm --quiet --notest App::Sqitch

The client and connection libraries for each engine are:

*   PostgreSQL, YugabyteDB, and CockroachDB: `postgresql perl-DBD-Pg`
*   SQLite: `sqlite perl-DBD-SQLite`
*   Oracle: `perl-DBD-Oracle`
*   MySQL: `mysql perl-DBD-mysql`
*   Firebird: `firebird-classic perl-DBD-Firebird perl-Time-HiRes`
*   Vertica, Exasol, Snowflake: `perl-DBD-ODBC`

  [Yum]: http://yum.baseurl.org
  [cpanminus]: https://cpanmin.us
  [PostgreSQL]: https://postgresql.org/
    "PostgreSQL: The World's Most Advanced Open Source Relational Database"

{{% /section %}}