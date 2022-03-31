# Install awesome_print to local directory
# GEM_HOME=${PWD}/.gem gem install awesome_print
require 'awesome_print'

puts 'Content-Type: text/plain; charset=UTF-8'
puts 'Status: 200'

puts

puts 'Hello from ruby!'
puts
puts "ruby version: #{RUBY_VERSION} (#{RUBY_RELEASE_DATE}) [#{RUBY_PLATFORM}]"

puts

puts '### ARGV[0] ###'
puts
puts "$0            : #{$0}"
puts "__FILE__      : #{__FILE__}"
puts "$PROGRAM_NAME : #{$PROGRAM_NAME}"

puts

puts '### Arguments ###'
ap ARGV

puts

puts '### Env Vars ###'
ap ENV

puts

puts '### Files ###'
ap Dir.children('/usr') # returns 'local'
ap Dir.children('/') # returns 'local'
