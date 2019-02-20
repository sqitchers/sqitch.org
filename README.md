sqitch.org
==========

This project contains the content and tools to build the sqitch.org web site. It
relies on [Hugo] for building the site and a short Perl script to build the
documentation pages from the Pod files in the [Sqitch repository].

Usage
-----

Use the included [Makefile] or [Hugo] to manage the site. The supported commands
are:

### `make`
### `make build`

Builds the site by taking the following steps:

*   Builds the Sqitch documentation Markdown pages (see `make docs` below)
*   Updates the `public` subdirectory, which is a submodule pointing to the
    [published site repository]
*   Removes all the files from the `public` subdirectory
*   Runs `hugo` to build the site in the `public` subdirectory

### `make docs`

Builds the Sqitch documentation content pages from the Pod files in the [Sqitch
repository] by taking the following steps:

*   Updates the `sqitch` subdirectory, which is a submodule pointing to the
    [Sqitch repository]'s master branch, on the assumption that it represents
    the current stable release
*   Removes the files matching `content/docs/sqitch*`
*   Runs [`gendocs`], a Perl script that searches for all the Sqitch
    documentation Pod files matching `/^sqitch/`, runs each through [Pod::Markdown],
    and writes the resulting file to `content/docs`.

Note that Git [ignores] files matching `content/docs/sqitch*`, so the generated
documentation pages should never be committed to the repository.

### `make deploy`

Builds the site and publishes it by taking the following steps:

*   Builds the site (see `make build` above) in the `public` submodule
    subdirectory
*   Commits the updated site and pushes it to the [published site repository]

Following a deploy, sqitch.org should be updated within a few minutes.

### `make server`

Builds the docs (see `make docs` above) and then runs a test server serving the
site for testing at `http://localhost:1313/`. The site is dynamically generated,
not written to disk, and the server watches for changes to files and triggers
browser reloads when they do, making it ideal for experimenting with CSS and
templating changes.

This server is provided [by Hugo] and binds to all available network addresses,
so that you can connect from other devices if you know the IP address of the
host. Useful for browser and device compatibility testing.

### `hugo new`

Use the [`hugo new`] command to create new content pages. For example, to add 
a new top-level page for news to be served from `/news`, run:

    hugo new content/news.md

Or to create a directory:

    hugo new content/news/index.md

If you need to create a section that other pages will be added to:

    hugo new content/news/_index.md

Refer to the [Hugo docs] for all the details.

Author
------

[David E. Wheeler] created this project and designed the [sqitch.org] web site.
The project is maintained by the [Sqitchers].

  [Hugo]: https://gohugo.io "The world’s fastest framework for building websites"
  [Sqitch repository]: /sqitchers/sqitch
  [Makefile]: Makefile
  [published site repository]: /sqitchers/sqitchers.github.io
  [`gendocs`]: bin/gendocs
  [ignores]: .gitignore
  [`hugo new`]: https://gohugo.io/commands/hugo_new/
  [Hugo docs]: https://gohugo.io/documentation/
  [by Hugo]: https://gohugo.io/commands/hugo_server/
  [David E. Wheeler]: /theory/
  [Sqitchers]: /sqitchers/
