#Problem 1

def prime?(n)
    if n == 1 || 0
        false
    elsif n == 2
        true
    end
    (rand(2...(n.abs)) ** (n.abs - 1)) % n.abs == 1
end
