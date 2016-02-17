#!/bin/ruby

n = gets.strip.to_i

n.times { |i|
    puts " "*(n-i-1) + "#"*(i+1)
    }