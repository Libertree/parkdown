Parkdown --- Ruby Markdown library
==================================

Parkdown is a Ruby extension library around [my fork][1] of
[John MacFarlane's fast implementation][2] of Markdown in C.  This
extension library is a fork of Ryan Tomayko's [rpeg-markdown][3]
library.  The main difference between Ryan's library and Parkdown is
the underlying parser.  Ryan's library uses an outdated version of
John MacFarlane's peg-markdown, while Parkdown uses the parser
generated from [my heavily extended Markdown grammar][4].

[1]: https://github.com/rekado/peg-markdown/
[2]: https://github.com/jgm/peg-markdown/
[3]: https://github.com/rtomayko/rpeg-markdown
[4]: https://github.com/rekado/peg-markdown/blob/master/markdown_parser.leg

Synopsis
--------

    >> require 'markdown'
    >> puts Markdown.new('Hello, world.').to_html
    <p>Hello, world.</p>

    >> puts Markdown.new('_Hello World!_', :smart, :filter_html).to_html
    <p><em>Hello World!</em></p>

    >> puts Markdown.new('_Hello World!_').to_latex
    \emph{Hello World!}

    >> puts Markdown.new('_Hello World!_').to_groff_mm
    .P
    \fIHello world!\fR


Extensions
----------

Parkdown comes with the following non-standard extensions that are not
found in the libraries its originally based on:

- HTML5 video embedding: `%[caption](file-url.ogv alternative.mp4)`
- HTML5 audio embedding: `~[title](file-url.ogg alternative.mp3)`
- autolink: turns plain URLs (not wrapped in angled brackets) into
  clickable links
- strike-through: `I owe you ~~ten~~ twenty coins.`
- image filtering: renders images as regular links
- hard wrap: translate simple line breaks into HTML line breaks
- code blocks: wrap a block in `~~~` to render it as a code block
- hashtags: wraps any term starting with `#` in `<span rel="hashtag">...</span>`
- usernames: wraps any name starting with `@` in `<span rel="username">...</span>`
- spoilers: a block prefixed with `?>` will be wrapped in a `<div class="spoilers">`.
  Use CSS and JS to hide and show the block as needed.


Hacking
-------

The hard work of rendering some plain text syntax to
HTML/LaTeX/ODF/etc. is done by the parser that is generated from the
grammar in peg-markdown.  To implement custom extensions, fork
peg-markdown and extend the grammar.  Then update the peg-markdown
submodule in your fork of parkdown and expose the extension in the
Ruby library.  Use the rake task `rake gather` to build the parser
from the grammar in the `peg-markdown/` directory and collect the
files in `ext/`.  Then build the extension with `rake build`.

Patches are happily accepted via pull requests or email.


Installation
------------

This library requires a recent version of glib2. All modern GNU
userland systems should be fine.

Install from GEM:

    $ sudo gem install parkdown


COPYING
-------

The peg-markdown sources are licensed under the GPL and Parkdown
adopts this license (just as the original rpeg-markdown did).  See the
file LICENSE included with this distribution for more information.
