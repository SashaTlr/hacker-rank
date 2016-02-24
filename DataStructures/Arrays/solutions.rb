#Problem 1

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

def reverse_string(arr)
    arr.reverse!.join(" ")
end

print reverse_string(arr)
