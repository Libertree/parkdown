# encoding: utf-8
Gem::Specification.new do |s|
  s.name = 'rpeg-markdown'
  s.version = '1.4.14'
  s.summary = "Fast Markdown implementation"
  s.description = ''
  s.date = '2014-07-26'
  s.email = 'spam@elephly.net'
  s.homepage = 'http://github.com/rekado/rpeg-markdown'
  s.authors = ["Ryan Tomayko", "Rekado"]
  s.has_rdoc = true
  # = MANIFEST =
  s.files = %w[
README.markdown
LICENSE
Rakefile
lib/markdown.rb
lib/peg_markdown.rb
ext/extconf.rb
test/benchmark.rb
test/markdown_test.rb
ext/markdown.c
ext/markdown_lib.c
ext/markdown_output.c
ext/markdown_parser.c
ext/parsing_functions.c
ext/utility_functions.c
ext/extconf.h
ext/markdown_lib.h
ext/markdown_peg.h
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
bin/rpeg-markdown
]
  # = MANIFEST =
  s.test_files = ["test/markdown_test.rb"]
  s.extra_rdoc_files = ["LICENSE"]
  s.extensions = ["ext/extconf.rb"]
  s.executables = ["rpeg-markdown"]
  s.require_paths = ["lib"]
  s.bindir = 'bin'
end
