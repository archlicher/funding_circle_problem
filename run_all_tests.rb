#!/usr/bin/env ruby

Dir["#{File.dirname(File.absolute_path(__FILE__))}/tests/test_*.rb"].each {|file| require file }
