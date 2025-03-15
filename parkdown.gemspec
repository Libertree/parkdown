# encoding: utf-8
Gem::Specification.new do |s|
  s.authors = ['Ryan Tomayko', 'Rekado', 'Pistos']
  s.bindir = 'bin'
  s.date = '2025-03-15'
  s.description = ''
  s.email = 'spam@elephly.net'
  s.executables = ['parkdown']
  s.extensions = ['ext/extconf.rb']
  s.extra_rdoc_files = ['LICENSE']
  s.homepage = 'https://github.com/Libertree/parkdown'
  s.licenses = ['GPL-2.0-or-later']
  s.name = 'parkdown'
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 3.0.0'
  s.summary = 'Fast Markdown implementation'
  s.test_files = ['test/markdown_test.rb']
  s.version = '1.4.31'

  # = MANIFEST =
  s.files = %w[
LICENSE
README.markdown
Rakefile
bin/parkdown
ext/extconf.h
ext/markdown.c
ext/markdown_lib.c
ext/markdown_lib.h
ext/markdown_output.c
ext/markdown_parser.c
ext/markdown_peg.h
ext/odf.c
ext/odf.h
ext/parsing_functions.c
ext/parsing_functions.h
ext/utility_functions.c
ext/utility_functions.h
lib/markdown.rb
lib/peg_markdown.rb
test/MarkdownTest_1.0.3/MarkdownTest.pl
test/MarkdownTest_1.0.3/Tests/Amps\ and\ angle\ encoding.html
test/MarkdownTest_1.0.3/Tests/Amps\ and\ angle\ encoding.text
test/MarkdownTest_1.0.3/Tests/Auto\ links.html
test/MarkdownTest_1.0.3/Tests/Auto\ links.text
test/MarkdownTest_1.0.3/Tests/Backslash\ escapes.html
test/MarkdownTest_1.0.3/Tests/Backslash\ escapes.text
test/MarkdownTest_1.0.3/Tests/Blockquotes\ with\ code\ blocks.html
test/MarkdownTest_1.0.3/Tests/Blockquotes\ with\ code\ blocks.text
test/MarkdownTest_1.0.3/Tests/Code\ Blocks.html
test/MarkdownTest_1.0.3/Tests/Code\ Blocks.text
test/MarkdownTest_1.0.3/Tests/Code\ Spans.html
test/MarkdownTest_1.0.3/Tests/Code\ Spans.text
test/MarkdownTest_1.0.3/Tests/Hard-wrapped\ paragraphs\ with\ list-like\ lines.html
test/MarkdownTest_1.0.3/Tests/Hard-wrapped\ paragraphs\ with\ list-like\ lines.text
test/MarkdownTest_1.0.3/Tests/Horizontal\ rules.html
test/MarkdownTest_1.0.3/Tests/Horizontal\ rules.text
test/MarkdownTest_1.0.3/Tests/Inline\ HTML\ (Advanced).html
test/MarkdownTest_1.0.3/Tests/Inline\ HTML\ (Advanced).text
test/MarkdownTest_1.0.3/Tests/Inline\ HTML\ (Simple).html
test/MarkdownTest_1.0.3/Tests/Inline\ HTML\ (Simple).text
test/MarkdownTest_1.0.3/Tests/Inline\ HTML\ comments.html
test/MarkdownTest_1.0.3/Tests/Inline\ HTML\ comments.text
test/MarkdownTest_1.0.3/Tests/Links,\ inline\ style.html
test/MarkdownTest_1.0.3/Tests/Links,\ inline\ style.text
test/MarkdownTest_1.0.3/Tests/Links,\ reference\ style.html
test/MarkdownTest_1.0.3/Tests/Links,\ reference\ style.text
test/MarkdownTest_1.0.3/Tests/Links,\ shortcut\ references.html
test/MarkdownTest_1.0.3/Tests/Links,\ shortcut\ references.text
test/MarkdownTest_1.0.3/Tests/Literal\ quotes\ in\ titles.html
test/MarkdownTest_1.0.3/Tests/Literal\ quotes\ in\ titles.text
test/MarkdownTest_1.0.3/Tests/Markdown\ Documentation\ -\ Basics.html
test/MarkdownTest_1.0.3/Tests/Markdown\ Documentation\ -\ Basics.text
test/MarkdownTest_1.0.3/Tests/Markdown\ Documentation\ -\ Syntax.html
test/MarkdownTest_1.0.3/Tests/Markdown\ Documentation\ -\ Syntax.text
test/MarkdownTest_1.0.3/Tests/Nested\ blockquotes.html
test/MarkdownTest_1.0.3/Tests/Nested\ blockquotes.text
test/MarkdownTest_1.0.3/Tests/Ordered\ and\ unordered\ lists.html
test/MarkdownTest_1.0.3/Tests/Ordered\ and\ unordered\ lists.text
test/MarkdownTest_1.0.3/Tests/Strong\ and\ em\ together.html
test/MarkdownTest_1.0.3/Tests/Strong\ and\ em\ together.text
test/MarkdownTest_1.0.3/Tests/Tabs.html
test/MarkdownTest_1.0.3/Tests/Tabs.text
test/MarkdownTest_1.0.3/Tests/Tidyness.html
test/MarkdownTest_1.0.3/Tests/Tidyness.text
test/MarkdownTest_1.0/MarkdownTest.pl
test/MarkdownTest_1.0/Tests/Amps\ and\ angle\ encoding.html
test/MarkdownTest_1.0/Tests/Amps\ and\ angle\ encoding.text
test/MarkdownTest_1.0/Tests/Auto\ links.html
test/MarkdownTest_1.0/Tests/Auto\ links.text
test/MarkdownTest_1.0/Tests/Backslash\ escapes.html
test/MarkdownTest_1.0/Tests/Backslash\ escapes.text
test/MarkdownTest_1.0/Tests/Blockquotes\ with\ code\ blocks.html
test/MarkdownTest_1.0/Tests/Blockquotes\ with\ code\ blocks.text
test/MarkdownTest_1.0/Tests/Hard-wrapped\ paragraphs\ with\ list-like\ lines.html
test/MarkdownTest_1.0/Tests/Hard-wrapped\ paragraphs\ with\ list-like\ lines.text
test/MarkdownTest_1.0/Tests/Horizontal\ rules.html
test/MarkdownTest_1.0/Tests/Horizontal\ rules.text
test/MarkdownTest_1.0/Tests/Inline\ HTML\ (Advanced).html
test/MarkdownTest_1.0/Tests/Inline\ HTML\ (Advanced).text
test/MarkdownTest_1.0/Tests/Inline\ HTML\ (Simple).html
test/MarkdownTest_1.0/Tests/Inline\ HTML\ (Simple).text
test/MarkdownTest_1.0/Tests/Inline\ HTML\ comments.html
test/MarkdownTest_1.0/Tests/Inline\ HTML\ comments.text
test/MarkdownTest_1.0/Tests/Links,\ inline\ style.html
test/MarkdownTest_1.0/Tests/Links,\ inline\ style.text
test/MarkdownTest_1.0/Tests/Links,\ reference\ style.html
test/MarkdownTest_1.0/Tests/Links,\ reference\ style.text
test/MarkdownTest_1.0/Tests/Literal\ quotes\ in\ titles.html
test/MarkdownTest_1.0/Tests/Literal\ quotes\ in\ titles.text
test/MarkdownTest_1.0/Tests/Markdown\ Documentation\ -\ Basics.html
test/MarkdownTest_1.0/Tests/Markdown\ Documentation\ -\ Basics.text
test/MarkdownTest_1.0/Tests/Markdown\ Documentation\ -\ Syntax.html
test/MarkdownTest_1.0/Tests/Markdown\ Documentation\ -\ Syntax.text
test/MarkdownTest_1.0/Tests/Nested\ blockquotes.html
test/MarkdownTest_1.0/Tests/Nested\ blockquotes.text
test/MarkdownTest_1.0/Tests/Ordered\ and\ unordered\ lists.html
test/MarkdownTest_1.0/Tests/Ordered\ and\ unordered\ lists.text
test/MarkdownTest_1.0/Tests/Strong\ and\ em\ together.html
test/MarkdownTest_1.0/Tests/Strong\ and\ em\ together.text
test/MarkdownTest_1.0/Tests/Tabs.html
test/MarkdownTest_1.0/Tests/Tabs.text
test/MarkdownTest_1.0/Tests/Tidyness.html
test/MarkdownTest_1.0/Tests/Tidyness.text
test/benchmark.rb
test/markdown_test.rb
]
  # = MANIFEST =
end
