n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

def find_fractions(array)
    summary_array = Array.new(3)
    array_length = array.length.to_f
    summary_array[0] = (array.count {|positives| positives > 0}.to_f / array_length).round(6)
    summary_array[1] = (array.count {|negatives| negatives < 0}.to_f / array_length).round(6)
    summary_array[2] = 1 - summary_array[0] - summary_array[1]
    summary_array
end

print find_fractions(arr).join("\n")