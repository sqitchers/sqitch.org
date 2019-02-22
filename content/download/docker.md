---
title: "Sqitch Docker Image"
description: Run Sqitch from a docker image exactly as if it was installed locally.
id: install
---

{{% section class="docker" %}}

The [Sqitch Docker image] is by far the quickest and easiest way to get started
with Sqitch. It supports [PostgreSQL], [SQLite], [MariaDB] \([MySQL]), and
[Firebird]. Simply pull the image, download the shell script wrapper, make it
executable, and go:

    docker pull sqitch/sqitch
    curl -L https://git.io/fAX6Z -o sqitch && chmod +x sqitch
    ./sqitch help

Set the `$SQITCH_IMAGE` environment variable to run a different Sqitch image
from the script. For example, to run an older version:

    export SQITCH_IMAGE sqitch/sqitch:0.9998
    ./sqitch --version

See [the README] for additional details.

  [Sqitch Docker image]: https://hub.docker.com/r/sqitch/sqitch/
  [PostgreSQL]: https://postgresql.org/
  [SQLite]: https://sqlite.org/
  [MariaDB]: https://mariadb.com/
  [MySQL]: https://mysql.com
  [Firebird]: https://firebirdsql.org/
  [the README]: https://github.com/sqitchers/docker-sqitch#readme

{{% /section %}}
