require_relative '../cal.rb'
require "minitest/autorun"

class TestCalIntegration < MiniTest::Unit::TestCase

  def test_February_is_leap_year
    shell_output = `ruby cal.rb 02 2000`
    expected_output = <<EOS
   February 2000
Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7
8  9  10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29
EOS
    assert_equal expected_output, shell_output
  end

  def test_February_is_not_leap_year
    shell_output = `ruby cal.rb 02 2015`
    expected_output = <<EOS
   February 2015
Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7
8  9  10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28

EOS
    assert_equal expected_output, shell_output
  end

  def test_month_has_31_days
    shell_output = `ruby cal.rb 01 2014`
    expected_output = <<EOS
    January 2014
Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7
8  9  10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    assert_equal expected_output, shell_output
  end

  def test_month_has_30_days
    shell_output = `ruby cal.rb 04 2014`
    expected_output = <<EOS
     April 2014
Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7
8  9  10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30

EOS
    assert_equal expected_output, shell_output
  end

  def test_if_leap_year
    shell_output = `ruby year.rb 2000`
    expected_output = <<EOS
                           2000
January                    February                    March
Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
29 30 31                   29                          29 30 31

April                      May                         June
Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
29 30                      29 30 31                    29 30

July                       August                      September
Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
29 30 31                   29 30 31                    29 30

October                    November                    December
Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
29 30 31                   29 30                       29 30 31
EOS
    assert_equal expected_output, shell_output
  end

  def test_if_NOT_leap_year
    shell_output = `ruby year.rb 2014`
    expected_output = <<EOS
                           2014
January                    February                    March
Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
29 30 31                                               29 30 31

April                      May                         June
Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
29 30                      29 30 31                    29 30

July                       August                      September
Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
29 30 31                   29 30 31                    29 30

October                    November                    December
Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
29 30 31                   29 30                       29 30 31
EOS
    assert_equal expected_output, shell_output
  end




end