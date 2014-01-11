class Zeller_work
  attr_reader :month, :year
     months = ["march", "april", "may", "june", "july", "august", "september", "october", "november", "december", "january", "february"]
     months[0] == "03"
     months[1] == "04"
     months[2] == "05"
     months[3] == "06"
     months[4] == "07"
     months[5] == "08"
     months[6] == "09"
     months[7] == "10"
     months[8] == "11"
     months[9] == "12"
     months[10] == "13"
     months[11] == "14"

  def initialize(month, year)
    @month = month
    @year = year
  end

  def leap_year
    if ( @year % 4 == 0 || @year % 400 == 0 )
      return true
    elsif ( @year % 100 != 0  )
      return false
    end
  end

  def zeller(month, day)
    months = ["march", "april", "may", "june", "july", "august", "september", "october", "november", "december", "january", "february"]
    weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    h = day
    mo = months.index(month.downcase) + 1 #makes 12 months
    yr = (mo <= 10) ? year : year-1
    k = yr % 100
    x = yr / 100
    formula = (h + (((13*mo) - 1) / 5).floor + k + (k/4).floor + (x/4).floor - (2*x)) % 7
    weekdays[formula]
    first_day = weekdays[formula]
    return first_day
  end

end

  # def day
  #   weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
  #   result = Calendar.new(month, year)
  #   result.zeller(formula)

  #   if weekdays[formula] == weekdays[0]
  #     first_day = 0
  #   elsif weekdays[formula] == weekdays[1]
  #     first_day = 1
  #   elsif weekdays[formula] == weekdays[2]
  #     first_day = 2
  #   elsif weekdays[formula] == weekdays[3]
  #     first_day = 3
  #   elsif weekdays[formula] == weekdays[4]
  #     first_day = 4
  #   elsif weekdays[formula] == weekdays[5]
  #     first_day = 5
  #   elsif weekdays[formula] == weekdays[6]
  #     first_day = 6
  #   elsif weekdays[formula] == weekdays[7]
  #     first_day = 7
  #   end
  # end



