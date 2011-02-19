ROOT_PATH = File.expand_path(File.dirname(__FILE__))

$:.unshift(*Dir[File.join(ROOT_PATH, "vendor/*/lib")])

begin
  require "rubygems"  if RUBY_VERSION < "1.9"
  # NB: Edit .gems if you add gems here.
  gem 'cuba', '~> 1.0'
  gem 'haml', '>= 3.0'
  require "cuba"
rescue LoadError => e
  $stderr.write "Not all gems were able to load. (#{e.message.strip})\n"
  $stderr.write "Do `monk install` first, or install the gems in .gems yourself.\n"
  exit
end

module Kernel
private
  def root(*args)
    File.join(ROOT_PATH, *args)
  end
end

