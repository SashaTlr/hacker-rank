#!/bin/ruby

n = gets.strip.to_i
a = Array.new(n)

for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end

def diagonal_diff(array_a)
    sum_array = array_a.map.with_index { |sub_array, index|
        sub_array[index] - sub_array[-1-index]
        }.reduce(:+).abs

end

print diagonal_diff(a)