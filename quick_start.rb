require 'fileutils'

puts 'enter project name: ' if ARGV[0].nil?

name = ARGV[0]

dir = File.expand_path './ruby_minitest'

FileUtils.cd "#{ENV['HOME']}/ruby"
FileUtils.mkdir_p "#{name}/lib"
FileUtils.cp "#{dir}/Gemfile", "#{name}"
FileUtils.cp "#{dir}/Rakefile", "#{name}"
FileUtils.cp_r "#{dir}/spec", "#{name}"
