require cal

class Ruby_Cal
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
    @leap_year = leap_year
  end

  # def Zeller.calculate(day, month, year)
  #   # Months = march = 3, april = 4, may =5, december=12,  .... january = 13, february = 14
  #   #weekdays = Sat = 0, Sun = 1, Monday = 2, Weds = 3, Thursday = 4,

  #   end

  def leap_year
    if ( @year % 4 == 0 || @year % 400 == 0 )
      return @year = leap_year #it is a leap year
    elsif ( @year % 100 != 0  )
      return @year = year #it's not a leap year
    end
  end

  def reg_month(month, year)
    months = ["march", "april", "may", "june", "july", "august", "september", "october", "november", "december", "january", "february"]
    weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    header = "#{month}","#{year}"
    days = %w[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31]
    #%w includes the "" and commas

    if month include.months == true
      print header,"\n",
      days.split(` `,"\n")
    end


#     January 2014
# Su Mo Tu We Th Fr Sa
#           1  2  3  4
#  5  6  7  8  9 10 11
# 12 13 14 15 16 17 18
# 19 20 21 22 23 24 25
# 26 27 28 29 30 31

  end





end

# puts `cal #{month} #{year}`

month = ARGV[0]
year = ARGV[1]
months = ["January", "February","March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
if month == months[0]
  print "     #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31"
elsif month == months[2]#march
  print "     #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31"
elsif month == months[4]#may
  print "     #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31"
elsif month == months[6]#july
  print "     #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31"
elsif month == months[7]#august
  print "     #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31"
elsif month == months[9]#october
  print "     #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31"
elsif month == months[11]#december
  print "     #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31"
elsif month == months[1] #february
  print "     #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28"
elsif month == months[3]#April
  print "     #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30"
elsif month == months[5]#June
  print "     #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30"
elsif month == months[8]#September
  print "     #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30"
elsif month == months[10]#November
  print "     #{month} #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30"

else
  puts "nothing"
end

#     January 2014
# Su Mo Tu We Th Fr Sa
#           1  2  3  4
#  5  6  7  8  9 10 11
# 12 13 14 15 16 17 18
# 19 20 21 22 23 24 25
# 26 27 28 29 30 31



