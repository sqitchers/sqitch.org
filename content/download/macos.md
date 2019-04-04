---
title: "Sqitch on macOS"
description: Install Sqitch from Homebrew on macOS.
id: install
---

{{% section class="brew" %}}

The [Sqitch Homebrew Tap] quickly builds Sqitch on your Mac. To install from
Homebrew, configure the tap and then install the variants you need via the
appropriate `--use-$engine-support` options. For example, to install Sqitch with
[PostgreSQL] and [SQLite] support:

    brew tap sqitchers/sqitch
    brew install sqitch --with-postgres-support --with-sqlite-support

Some engines require the installation of dependencies in advance; consult [the
docs] for build details and options.

  [Sqitch Homebrew Tap]: https://github.com/sqitchers/homebrew-sqitch/
  [PostgreSQL]: https://postgresql.org/
    "PostgreSQL: The World's Most Advanced Open Source Relational Database"
  [SQLite]: https://sqlite.org/
    "SQLite: Small. Fast. Reliable. Choose any three."
  [the docs]: https://github.com/sqitchers/homebrew-sqitch/#readme

{{% /section %}}