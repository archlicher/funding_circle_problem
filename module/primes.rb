#!/usr/bin/env ruby

module Primes
  def first_primes(n)
    n_primes = []
    i = 2
    until n_primes.count == n
      n_primes.push(i) if prime?(i)
      i += 1
    end
    n_primes
  end

  def prime?(n)
    return false if n < 2
    for num in 2..n/2
      return false if n % num == 0
    end
    true
  end
end
