---
title: "About Sqitch"
type: about
---

Sqitch is a database change management application. What makes it different from
your typical migration-style approaches? A few things:

<div class="icon db"></div>

No Opinions
-----------

Sqitch is not integrated with any framework, ORM, or platform. Rather, it is a
standalone change management system with no opinions about your database engine,
application framework, or development environment.

<div class="icon cli"></div>

Native scripting
----------------

Changes are implemented as scripts native to your selected database engine.
Writing a [PostgreSQL] application? Write SQL scripts for `psql`. Writing a
[MySQL]-backed app? Write SQL scripts for `mysql`.

<div class="icon depend"></div>

Dependency resolution
---------------------

Database changes may declare dependencies on other changes — even on changes
from other Sqitch projects. This ensures proper order of execution, even when
you’ve committed changes to your VCS out-of-order.

<div class="icon hash"></div>

No numbering
------------

Change deployment is managed by maintaining a plan file. As such, there is no
need to number your changes, although you can if you want. Sqitch doesn’t much
care how you name your changes.

<div class="icon dev"></div>
Iterative development
---------------------

Up until you tag and release your application, you can modify your change
deployment scripts as often as you like. They’re not locked in just because
they’ve been committed to your VCS. This allows you to take an iterative
approach to developing your database schema. Or, better, you can do test-driven
database development.

----

Ready to give Sqitch a try? [Download] it now or read [the docs].

  [PostgreSQL]: https://postgresql.org/
    "PostgreSQL: The World's Most Advanced Open Source Relational Database"
  [MySQL]: https://mysql.com/
    "MySQL: The world's most popular open source database"
  [Download]: /downloads/
  [the docs]: /docs/