---
title: "About Sqitch"
type: about
---

Sqitch is a database change management application. What makes it different from
your typical migration-style approaches? A few things:

{{% section class="db" %}}

No Opinions
-----------

Sqitch is not tied to any framework, ORM, or platform. Rather, it is a
standalone change management system with no opinions about your database engine,
application framework, or development environment.

{{% /section %}}
{{% section class="cli" %}}

Native scripting
----------------

Changes are implemented as scripts native to your selected database engine.
Writing a [PostgreSQL] application? Write SQL scripts for `psql`. Writing a
[MySQL]-backed app? Write SQL scripts for `mysql`.

  [PostgreSQL]: https://postgresql.org/
    "PostgreSQL: The World's Most Advanced Open Source Relational Database"
  [MySQL]: https://mysql.com/
    "MySQL: The world's most popular open source database"

{{% /section %}}
{{% section class="depend" %}}

Dependency resolution
---------------------

Database changes may declare dependencies on other changes --- even changes from
other Sqitch projects. This ensures proper order of execution, even when you've
committed changes to your VCS out-of-order.

{{% /section %}}
{{% section class="hash" %}}

Deployment integrity
--------------------

Sqitch manages changes and dependencies via a plan file, and employs a [Merkle
tree] pattern similar to [Git] and [Blockchain] to ensure deployment integrity.
As such, there is no need to number your changes, although you can if you want.
Sqitch doesn't much care how you name your changes.

  [Merkle tree]: https://en.wikipedia.org/wiki/Merkle_tree "Wikipedia: “Merkle tree”"
  [Git]: https://stackoverflow.com/a/18589734/ "Stack Overflow: “What is the mathematical structure that represents a Git repo”"
  [Blockchain]: https://medium.com/byzantine-studio/blockchain-fundamentals-what-is-a-merkle-tree-d44c529391d7 "Medium: “Blockchain Fundamentals #1: What is a Merkle Tree?”"

{{% /section %}}
{{% section class="dev" %}}

Iterative development
---------------------

Up until you [tag](/docs/manual/sqitch-tag/) and [release] your application, you
can modify your change deployment scripts as often as you like. They're not
locked in just because they've been committed to your VCS. This allows you to
take an iterative approach to developing your database schema. Or, better, you
can do test-driven database development.

  [tag]: /docs/manual/sqitch-tag/ "Sqitch commands: tag"
  [release]: /docs/manual/sqitch-bundle/ "Sqitch commands: bundle"

{{% /section %}}

----

Ready to give Sqitch a try? [Download] it now or read [the docs].

  [Download]: /download/
  [the docs]: /docs/
