#!/usr/bin/env ruby
require 'terminal-table'
require_relative '../module/primes'

class CalculateTable
  include Primes

  INVALID_USER_INPUT = 'Invalid user input.'

  def initialize(arr)
    @n = arr.count == 2 ? arr[1].to_i : arr[0].to_i
  end

  def print_table(primes)
    return INVALID_USER_INPUT if primes.is_a?(String)
    puts Terminal::Table.new(headings: primes.shift, rows: primes)
  end

  def create_primes_table
    return INVALID_USER_INPUT if @n == 0
    primes = Array.new(@n) { Array.new }
    primes.unshift(first_primes(@n).unshift(nil))

    primes.each_with_index do |arr, i|
      next if i == 0
      arr.push(primes[0][i])
    end

    for col in 1...primes.count
      for row in col...primes.count
        product = primes[row][0] * primes[0][col]
        primes[row][col], primes[col][row] = product, product
      end
    end

    primes
  end
end
