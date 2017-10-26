def with_ordinal_indicator(num)
  num_str = num.to_s
  last_digit = num_str.chars.last
  second_last_digit = num_str.chars[-2]
  if second_last_digit == "1"
    num_str + "th"
  elsif last_digit == "1"
    num_str + "st"
  elsif last_digit == "2"
    num_str + "nd"
  elsif last_digit == "3"
    num_str + "rd"
  else
    num_str + "th"
  end
end

(1..40).each do |num|
  puts with_ordinal_indicator(num)
end

puts with_ordinal_indicator(112)
