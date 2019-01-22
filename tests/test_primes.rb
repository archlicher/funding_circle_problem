#!/usr/bin/env ruby
require 'test/unit'
require_relative '../module/primes'

class TestPrimes < Test::Unit::TestCase
  def test_prime
    table = CalculateTable.new([])
    assert_equal(true, table.prime?(5))
    assert_equal(true, table.prime?(97))
    assert_equal(false, table.prime?(1))
    assert_equal(false, table.prime?(0))
  end

  def test_first_primes
    table = CalculateTable.new([])
    assert_equal([2], table.first_primes(1))
    assert_equal([2, 3, 5], table.first_primes(3))
    assert_not_equal([2, 3], table.first_primes(5))
  end
end
