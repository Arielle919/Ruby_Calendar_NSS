require_relative 'zeller'
class Month_works

MONTHS = %w{ January February March April May June July August September October November December }

attr_reader :year, :month

  def initialize(month, year)
    @month = month
    @year = year.to_i
  end

# arr.delete_at(2)
  def use_zeller(month, day)
    @month = month
    day = 1
    @year = year
    year.to_i
    zeller_class = Zeller_work.new(month, year) #pull the class input correct # of parameters ..not just anything...
    first_day = zeller_class.zeller(month,1)#pull method from class
  end

  def display_months
    pull_month_class = Month_works.new(month, year)
    first_day = pull_month_class.use_zeller(month, year)

    month_name = MONTHS[@month.to_i - 1]
    first_line = "#{month_name} #{@year}".center(20).rstrip
    second_line = "Su Mo Tu We Th Fr Sa"
    days = []
    i = 0
    loop do
      i += 1
      days += [i]
      break if i >= 31
    end

    output = []
    output.unshift(second_line).unshift(first_line)

    output.each_slice(1) { |x|
      puts x.join
    }

  end

end