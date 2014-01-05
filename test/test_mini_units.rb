require_relative '../cal.rb'
require "minitest/autorun"


class TestCalMiniTest < MiniTest::Unit::TestCase

  def test_01_find_day_of_month_zeller
   cal = Calendar.new( 5, 2013 ) #calender.new(month, year)
   assert_equal( cal.zeller("may", 1).downcase, "wednesday" )#cal.zeller(month, day)
  end

  def test_02_find_day_of_month_zeller
   cal = Calendar.new( 13, 1991 )
   assert_equal( cal.zeller("january", 20).downcase, "sunday" )
  end

  def test_03_find_day_of_month_zeller
   cal = Calendar.new( 12, 1991 )
   assert_equal( cal.zeller("january", 20).downcase, "sunday" )
  end

  def test_04_if_day_starts_on_Sunday_zeller
   cal = Calendar.new( 13, 2012 )
   assert_equal( cal.zeller("january", 1).downcase, "sunday" )
  end

  # def test_05_if_month_has_6_weeks_zeller
  #  cal = Calendar.new( 09, 2012 ) #calender.new(month, year)
  #  assert_equal( cal.zeller("january", 1).downcase, "sunday" )
  # end

end