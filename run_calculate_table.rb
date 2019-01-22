#!/usr/bin/env ruby

require_relative 'lib/calculate_table'

table = CalculateTable.new(ARGV)
primes_table = table.create_primes_table()
puts table.print_table(primes_table)
