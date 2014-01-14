require_relative 'zeller'
require_relative 'months'
require_relative 'year'

month = ARGV[0]
year = ARGV[1]

  if ARGV.length == 1 #print out entire year
    year_class = Year_work.new(month, year)
    display_year_method = year_class.display
    print display_year_method
  # elsif ARGV.length == 2 && month == "02"
  #   feb_class = Month_work.new(month, year)
  #   display_feb_method = feb_class.display_February
  #   print display_feb_method
  # elsif ARGV.length == 2 && month != "02"
  #   month_class = Month_work.new(month, year)
  #   display_month_method = month_class.display_reg_months
  #   print display_month_method
  # elsif ARGV.length == 2
  #   year = year.to_i
  #   zeller_class = Zeller_work.new(month, year) #pull the class
  #   zeller_formula_method = zeller_class.zeller(month,1)#pull method from class
  #   puts zeller_formula_method #outputs weekday #, sunday starts on 0
  elsif ARGV.length == 2
    year = year.to_i
    zeller_class = Month_works.new(month, year) #pull the class
    zeller_formula_method = zeller_class.display_months#pull method from class
    puts zeller_formula_method #outputs weekday #, sunday starts on 0

  else
    print "Month and Year or Year needed"
  end



