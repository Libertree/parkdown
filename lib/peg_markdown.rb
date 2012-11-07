require 'peg_markdown.so'

# Front-end to jgm's peg-markdown implementation of Markdown, the humane
# text markup language.
#
# A simple processor:
#   >>> puts Markdown.new("Hello, World.").to_html
#   <p>Hello, World.</p>
#
# With other stuff:
#   >>> puts Markdown.new("_Hello -- World!_", :smart, :filter_html).to_html
#   <p><em>Hello World!</em></p>
#
class PEGMarkdown

  # Original Markdown formatted text.
  attr_reader :text

  # Set true to have smarty-like quote translation performed.
  attr_accessor :smart

  # Set true to have footnotes processed.
  attr_accessor :notes

  # Do not output <style> tags included in the source text.
  attr_accessor :filter_styles

  # Do not output any raw HTML included in the source text.
  attr_accessor :filter_html

  # Included for compatibility with RedCloth's interface.
  attr_accessor :fold_lines

  # Set true to enable strike-through extension.
  attr_accessor :strike

  # Set true to enable autolink extension.
  attr_accessor :autolink

  # Set true to enable hard wrap extension.
  attr_accessor :hard_wrap

  # Set true to disable rendering of images.
  attr_accessor :no_images

  # Create a new Markdown processor. The +text+ argument is a string
  # containing Markdown text. Variable other arguments may be supplied to
  # set various processing options:
  #
  # * <tt>:smart</tt> - Enable SmartyPants processing.
  # * <tt>:notes</tt> - Enable footnotes.
  # * <tt>:filter_styles</tt> - Do not output <style> tags included in the
  #   source text.
  # * <tt>:filter_html</tt> - Do not output raw HTML included in the
  #   source text.
  # * <tt>:fold_lines</tt> - RedCloth compatible line folding (not used).
  # * <tt>:strike</tt> - Enable strike-through extension.
  # * <tt>:autolink</tt> - Enable autolinking of bare URLs.
  # * <tt>:hard_wrap</tt> - Insert line breaks inside paragraphs.
  # * <tt>:no_images</tt> - Treat image links as if they were plain links.
  #
  def initialize(text, *extensions)
    @text = text
    @smart = false
    @notes = false
    @filter_styles = false
    @filter_html = false
    @strike = false
    @autolink = false
    @hard_wrap = false
    @no_images = false
    extensions.each { |e| send("#{e}=", true) }
  end

  alias to_s text

end

Markdown = PEGMarkdown unless defined? Markdown
