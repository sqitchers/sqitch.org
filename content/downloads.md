---
title: "Download Sqitch"
type: downloads
toc: true
---

{{% section class="docker" %}}

Docker
------

The Sqitch Docker image shell script is by far the quickest and easiest way to
get started with Sqitch. It supports PostgreSQL, SQLite, MySQL, and Firebird.
Simply pull the image, download the shell script, make it executable, and go:

    docker pull sqitch/sqitch
    curl -L https://git.io/fAX6Z -o sqitch && chmod +x sqitch
    ./sqitch help

{{% /section %}}
{{% section class="brew" %}}

Homebrew
--------

The [Sqitch Homebrew Tap] quickly builds Sqitch on you Mac. To install from
Homebrew, configure the tap and then install the variants you need via the
appropriate `--use-$engine-support` options. For example, to install Sqitch with
PostgreSQL and SQLite support:

    brew tap sqitchers/sqitch
    brew install sqitch \--with-postgres-support \--with-sqlite-support

  [Sqitch Homebrew Tap]: https://github.com/sqitchers/homebrew-sqitch/
  [the docs]: https://github.com/sqitchers/homebrew-sqitch/#readme

Some engines require the installation of dependencies in advance; consult [the
docs] for build details and options.

{{% /section %}}
{{% section class="cpan" %}}

CPAN
----

The canonical source for Sqitch releases is [CPAN]. Use the cpan or [cpanminus]
client to download and build Sqitch and its dependencies from source, as well
as the appropriate database drivers. For example, to install Sqitch with
PostgreSQL and SQLite support:

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

{{% /section %}}
{{% section class="ubuntu" %}}

Ubuntu/Debian
-------------

The [Debian Sqitch Apt] package tends to lag behind several versions, but provides
easy access to Debian and Ubuntu users. For example, to install Sqitch with
PostgreSQL and SQLite support:

    apg-get install sqitch libdbd-pg-perl postgresql-client libdbd-sqlite3-perl sqlite3

An alternative that gets you the latest version of Sqitch is to just `apt-get`
the external dependencies, and then build Sqitch itself via cpanminus. To
install Sqitch with MySQL support, for example:

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

{{% /section %}}
{{% section class="centos" %}}

CentOS/RedHat
-------------

The same basic pattern on Red Hat-derived systems calls for eternal dependencies
to be yum-installed, and for Sqitch itself to be built and installed by
cpanminus. For example, to install Sqitch with support for PostgreSQL:

    sudo yum install perl-devel perl-CPAN postgresql perl-DBD-Pg
    curl -L https://cpanmin.us | perl - --sudo App::cpanminus
    cpanm --quiet --notest App::Sqitch

The client and connection libraries for each engine are:

*   PostgreSQL: `postgresql perl-DBD-Pg`
*   SQLite: `install sqlite perl-DBD-SQLite`
*   Oracle: `perl-DBD-Oracle`
*   MySQL: `mysql perl-DBD-mysql`
*   Firebird: `firebird-classic perl-DBD-Firebird perl-Time-HiRes`
*   Vertica, Exasol, Snowflake: `perl-DBD-ODBC`

{{% /section %}}
{{% section class="windows" %}}

Windows
-------

The most reliable way to run Sqitch on Windows, aside from the Docker image, is
to install [Strawberry Perl](http://strawberryperl.com/) (also available from
[Chocolatey](https://chocolatey.org/packages/StrawberryPerl)) and then follow
the steps for installing from [CPAN](#cpan).

{{% /section %}}
{{% section class="zip" %}}

Source Code
-----------

The current version of Sqitch is `v0.9999`. Download the source from these
location [GitHub](https://github.com/sqitchers/sqitch/releases/) or
[CPAN](https://metacpan.org/release/App-Sqitch).

{{% /section %}}
{{% section class="github" %}}

GitHub
------

If you'd like to contribute to the development of Sqitch, fork the project
on [GitHub](https://github.com/sqitchers/sqitch) or clone the repository
directly:

    git clone https://github.com/sqitchers/sqitch

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
