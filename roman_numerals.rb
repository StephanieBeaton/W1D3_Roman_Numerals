

# We're going to write a method that converts an integer to its Roman numeral equivalent,
#  i.e., 476 => 'CDLXXVI'.

# For reference, these are the building blocks for how we encode numbers with Roman numerals:

# I   1
# V   5
# X   10
# L   50
# C   100
# D   500
# M   1000


# Roman Numerals as Representation
# Have you ever seen a 5?
# I don't mean the symbol we write on a piece of paper or print to a screen,
#  but an actual, honest-to-goodness 5?

# Of course not. You've seen things that somehow embody five:
#   five apples, five fingers, five weekdays on the calendar,
#    a scrap of paper with "5" written on it, and so forth.
# Think of all the ways you can represent the integer 5.

# Symbols like 5, "five", V, and IIIII are one way.
# If you asked a three-year-old, they might hold up the five fingers on their hand
# or pull out five pennies from their pocket.
# Computers encode numbers as a sequence of 0s and 1s called binary.

# The map is not the territory, as they say.

# Objectives

# Old-school Roman numerals
# In the early days of Roman numerals,
# the Roman's didn't bother with any of this new-fangled subtraction 'IX' nonsense.
#  No sir, it was straight addition, biggest to littlest--so 9 was written 'VIIII' and so on.

# Write a method to_roman that when passed an integer between 1 and 3000 (or so)
# returns a string containing the proper old-school Roman numeral.

# In other words, to_roman(4) should return the string 'IIII'.

# Make sure to test your method by passing it several inputs whose results you know.
# Test some simple numbers like to_roman(1)
# and more complicated numbers like to_roman(1646).
# This serves as a good sanity check.

# Hint: Use the integer division / and modulus % methods.

# You might want to run a script like this to make sure your program is working as intended:

# puts "My totally sweet testing script"
# puts ""
# puts "input | expected | actual"
# puts "------|----------|-------"
# puts "4     | IV       | #{to_roman(4)}"
# puts "9     | IX       | #{to_roman(9)}"
# puts "13    | XIII     | #{to_roman(13)}"
# puts "1453  | MCDLIII  | #{to_roman(1453)}"
# puts "1646  | MDCXLVI  | #{to_roman(1646)}"
# Examples

# Arabic      Roman
#      4         IV
#      9         IX
#     14        XIV
#     44       XLIV
#    944     CMXLIV

ROMAN_NUMERAL_CONVERSION = {
  1000 =>  'M',
  500  =>  'D',
  100  =>  'C',
  50   =>  'L',
  10   =>  'X',
  5    =>  'V',
  1    =>  'I'
}


def to_roman( decimal_number)

  return if decimal_number < 1
  return if decimal_number > 3000

  roman_numeral = ""

  # puts ROMAN_NUMERAL_CONVERSION.inspect

  remainder = decimal_number

  ROMAN_NUMERAL_CONVERSION.each do | key, value|

    # puts "key #{key}"
    # puts "value #{value}"

    divisor   = remainder / key
    remainder = remainder % key

    roman_numeral << value * divisor

    # puts "divisor = #{divisor}"
    # puts "remainder = #{remainder}"
  end

  roman_numeral

end


## TEST HELPER METHOD
def test_to_roman(decimal_number)

  result = to_roman(decimal_number)

  p result
  puts ""
end

# TEST CODE
puts "Old school Roman Numerals"
puts ""
puts "input | expected | actual"
puts "------|----------|-------"
puts "4     | IV       | #{to_roman(4)}"
puts "9     | IX       | #{to_roman(9)}"
puts "13    | XIII     | #{to_roman(13)}"
puts "1453  | MCDLIII  | #{to_roman(1453)}"
puts "1646  | MDCXLVI  | #{to_roman(1646)}"
puts ""
puts ""


# Modern Roman numerals (BONUS)

# Eventually, someone thought it would be terribly clever
# if putting a smaller number before a larger one meant you had to subtract the smaller one.
# As a result of this development, you must now suffer.

# Rewrite your previous method to return the new-style Roman numerals
# so when someone calls to_roman(4), it should return the string 'IV'.

ROMAN_NUMERAL_CONVERSION_NEW = {
  1000 =>  'M',
  900  =>  'CM',
  500  =>  'D',
  400  =>  'CD',
  100  =>  'C',
  90   =>  'XC',
  50   =>  'L',
  40   =>  'XL',
  10   =>  'X',
  9    =>  'IX',
  5    =>  'V',
  4    =>  'IV',
  1    =>  'I'
}


def to_roman_new( decimal_number)

  return if decimal_number < 1
  return if decimal_number > 3000

  roman_numeral = ""

  # puts ROMAN_NUMERAL_CONVERSION.inspect

  remainder = decimal_number

  ROMAN_NUMERAL_CONVERSION_NEW.each do | key, value|

    # puts "key #{key}"
    # puts "value #{value}"

    divisor   = remainder / key
    remainder = remainder % key

    roman_numeral << value * divisor

    # puts "divisor = #{divisor}"
    # puts "remainder = #{remainder}"
  end

  roman_numeral

end

# TEST CODE
puts "Modern Roman numerals (BONUS)"
puts ""
puts "input | expected | actual"
puts "------|----------|-------"
puts "4     | IV       | #{to_roman_new(4)}"
puts "9     | IX       | #{to_roman_new(9)}"
puts "13    | XIII     | #{to_roman_new(13)}"
puts "1453  | MCDLIII  | #{to_roman_new(1453)}"
puts "1646  | MDCXLVI  | #{to_roman_new(1646)}"

