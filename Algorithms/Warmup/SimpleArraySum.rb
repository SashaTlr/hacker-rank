#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

def sum_array(arr)
    arr.reduce(:+)
end

print sum_array(arr)