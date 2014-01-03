# require_relative '../cal.rb'

# class TestCalIntegration < MiniTest::Unit::TestCase

#   def test_monthes_exist
#     shell_output = `ruby cal.rb 02 2012`
#     expected_output = <<EOS
#    February 2012
# Su Mo Tu We Th Fr Sa
#           1  2  3  4
#  5  6  7  8  9 10 11
# 12 13 14 15 16 17 18
# 19 20 21 22 23 24 25
# 26 27 28 29
# EOS
#     assert_equal expected_output, shell_output
#   end

#     def test_weekdays_exist
#     shell_output = `ruby cal.rb months`
#     expected_output = <<EOS
# Sunday
# Monday
# Tuesday
# Wednesday
# Thursday
# Friday
# Saturday
# EOS
#     assert_equal expected_output, shell_output
#   end

# end