#Methods

#Problem 1

def prime?(n)
    if n == 1 || 0
        false
    elsif n == 2
        true
    end
    (rand(2...(n.abs)) ** (n.abs - 1)) % n.abs == 1
end

#Problem 2
  def take(arr, pick=1)
      arr.drop(pick)
  end

#Problem 3
def full_name(first, *rest)
    rest.inject(first) {|o, x| o +" " + x}
end

#Problem 4
# Your code here
def convert_temp(temperature, input_scale: 'celsius', output_scale: 'celsius')

    if input_scale == 'kelvin' && output_scale == 'celsius'
        273.15 - temperature
    elsif input_scale == 'fahrenheit' && output_scale == 'celsius'
        (temperature - 32.0) / 1.80
    elsif input_scale == 'celsius' && output_scale == 'kelvin'
        temperature +  273.15
    elsif input_scale == 'celsius' && output_scale == 'fahrenheit'
        temperature * 1.8 + 32.0
    elsif input_scale == 'kelvin' && output_scale == 'fahrenheit'
        (273.15 - temperature) * 1.8 + 32.0
    elsif input_scale == 'fahrenheit' && output_scale == 'kelvin'
        273.15 - ((temperature - 32.0) / 1.8)
    end
end