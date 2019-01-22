#!/usr/bin/env ruby
require 'test/unit'
require_relative '../lib/calculate_table'

class TestCalculateTable < Test::Unit::TestCase
  def test_create_primes_table
    table = CalculateTable.new([0])
    assert_equal('Invalid user input.', table.create_primes_table())
    table = CalculateTable.new(['1'])
    assert_equal([[nil, 2], [2, 4]], table.create_primes_table())
    table = CalculateTable.new(['--count','2'])
    assert_equal([[nil, 2, 3], [2, 4, 6], [3, 6, 9]], table.create_primes_table())
    table = CalculateTable.new([1])
    assert_not_equal('', table.create_primes_table())
  end

  def test_print_table
    table = CalculateTable.new([0])
    assert_equal('Invalid user input.', table.print_table('abc'))
    table = CalculateTable.new([1])
    assert_not_equal('Invalid user input.', table.print_table([[nil, 2], [2, 4]]))
  end
end
