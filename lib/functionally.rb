require "functionally/version"

Dir["#{File.dirname(__FILE__)}/functionally/*.rb"].sort.each do |path|
  next if File.basename(path, '.rb') == 'core_ext'
  require "functionally/#{File.basename(path, '.rb')}"
end
require "functionally/core_ext"

module Functionally
end
