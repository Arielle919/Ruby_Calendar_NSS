require_relative 'zeller'
require_relative 'month'
require_relative 'year'


#You need to pull from the month,year, and print zeller output for practice rb's

class Final_Calendar

if ARGV.length == 1 #print out entire year
  year_class = Year_work.new(02, 2004)
  display_year_method = year_class.display
  print display_year_method
# elsif ARGV.length == 2 #print month & year
#   month_class = Month_work.new(02, 2004)
#   display_month_method = month_class.display
#   print display_month_method
elsif ARGV.length == 2
  zeller_class = Zeller_work.new(01, 2014) #pull the class
  zeller_formula_method = zeller_class.zeller("January",1)#pull method from class
  puts zeller_formula_method #outputs WEDS ..day of the week 01, 2014 starts ON
else
  print "Month and Year or Year needed"
end

end
