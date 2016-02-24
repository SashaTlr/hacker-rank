#Problem 1

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

def reverse_string(arr)
    arr.reverse!.join(" ")
end

print reverse_string(arr)

#Problem 2
for arr_i in (0..6-1)
    arr_t = gets.strip
    arr[arr_i] = arr_t.split(' ').map(&:to_i)
end

def find_max(arr)
    arr.map.with_index{ |row, row_index|
        row.map.with_index{ |element, col_index|
            arr[row_index + 2].nil? || arr[row_index + 2][col_index+2].nil? ? -9*7 : row[col_index..col_index+2].reduce(:+) + arr[row_index + 1][col_index+1] + arr[row_index + 2][col_index..col_index+2].reduce(:+)
            }
        }.flatten!.max
end

print find_max(arr)