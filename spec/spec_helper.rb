require 'rubygems'
require 'bundler/setup'

require 'with_object'

Dir['spec/support/**/*.rb'].each { |f| require File.expand_path("../../#{f}", __FILE__) }
