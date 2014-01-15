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
    days_top = []
    i = 0
    loop do
      i += 1
      days_top += [" #{i}"]#add extra space for 1 digit #'s
      break if i >= 9
    end
    days_btm = []
    i = 9
    loop do
      i += 1
      days_btm += ["#{i}"]
      break if i >= 31
    end

    all_days = days_top | days_btm #combining 2 arrays w/ union

    output = []
    output.unshift(second_line).unshift(first_line)

    output.each_slice(1) { |line| #Header and weekday rows
      puts line.join
    }
    all_days.each_slice(7) { |day|
      puts day.join(" ")
    }

  end

end