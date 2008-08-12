# Install hook code here
puts

puts "Thanks for installing queue_and_not_u"

puts 

puts "Creating queue.yml configuration file if it doesn't already exist..."

require 'fileutils'
default_file = File.join(File.dirname(__FILE__), 'defaults', 'queue.yml.default')

config_file = File.join('.', 'config', 'queue.yml')

FileUtils.cp(default_file, config_file) unless File.exists?(config_file)
