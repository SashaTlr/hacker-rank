#!/bin/ruby

time = gets.strip

def time_conversion(time)
    #split time into an array
    time_array = time.split(":")

    #test if PM

    if time_array[2].slice(-2..-1) == "PM" && time_array[0].to_i < 12
        time_array[0] = time_array[0].to_i + 12
    elsif time_array[2].slice(-2..-1) == "AM" && time_array[0].to_i == 12
        time_array[0] = 0
    end

    time_array = time_array.map{|time| time.to_i}
    time_array = time_array.map{ |time|
        time<10 ? "0" + time.to_s : time.to_s
        }.join(":")

    print time_array
end

time_conversion(time)