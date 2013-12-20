require 'test/unit'
require './cal'

class Cal_Test < UnitTEST

#testing that 1/20/1991 20th == SUNDAY
def test_find_day_of_month_using_ZELLER
 cal = Calendar.new( 13, 1991 )
 assert_equal( cal.exactDay("JANUARY", 20), "SUNDAY" )
end

end