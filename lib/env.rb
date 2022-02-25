# Install awesome_print to local directory
# GEM_HOME=${PWD}/.gem gem install awesome_print
require 'awesome_print'

ENV['HOME'] ||= '.'

puts 'Content-Type: text/plain; charset=UTF-8'
puts 'Status: 200'
puts 'X-Foo-Header: Bar'

puts

puts 'Hello from ruby!'
puts
puts "ruby version: #{RUBY_VERSION} (#{RUBY_RELEASE_DATE}) [#{RUBY_PLATFORM}]"

puts

puts '### Arguments ###'
ap ARGV

puts

puts '### Env Vars ###'
ap ENV

puts

puts '### Files ###'
ap Dir.children('.')
