month = ARGV[0]
year = ARGV[1]

class Calendar
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end

  # def Zeller.calculate(day, month, year)
  #   # Months = march = 3, april = 4, may =5, december=12,  .... january = 13, february = 14
  #   #weekdays = Sat = 0, Sun = 1, Monday = 2, Weds = 3, Thursday = 4,

  #   end

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
  end



end

# puts `cal #{month} #{year}`

months = ["January", "February","March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
if month == months[0]
  print "    #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31"
elsif month == months[2]#march
  print "    #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31"
elsif month == months[4]#may
  print "    #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31"
elsif month == months[6]#july
  print "    #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31"
elsif month == months[7]#august
  print "    #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31"
elsif month == months[9]#october
  print "    #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31"
elsif month == months[11]#december
  print "    #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31"
elsif month == months[1] #february
  print "    #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28"
elsif month == months[3]#April
  print "    #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30"
elsif month == months[5]#June
  print "    #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30"
elsif month == months[8]#September
  print "    #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30"
elsif month == months[10]#November
  print "    #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30"

else
  puts "nothing"
end
