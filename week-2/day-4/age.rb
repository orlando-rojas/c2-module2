require 'date'
def age?(year, month,day)
    ((Date.today - Date.new(year, month, day)).to_i / 365)
end