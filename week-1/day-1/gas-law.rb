def calculate_pressure(chemical_amount, temperature, volume)
    r = 8.314
    pressure = chemical_amount*r*temperature/volume
    return pressure
end

puts calculate_pressure(5, 500, 2)