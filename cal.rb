month = ARGV[0]
year = ARGV[1]

class Calendar
  attr_reader :month, :year

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
  end

end
 # string_to_change.gsub!(/s/, "th")
 # arr = ["This is some sample text", "text file"]
 # => ["This is some sample text", "text file"]

 # arr = arr.map {|s| s.gsub(/text/, 'document')}
 # => ["This is some sample document", "document file"]

months = ["0", "01","02", "03", "04", "05", "06", "07", "08", "09", "10", "11","12"]
if ARGV[0] == months[1]
  print "January #{year}".center(20)
end
if ARGV[0] == months[2]
  print "February #{year}".center(20)
end
if ARGV[0] == months[3]
  print "March #{year}".center(20)
end
if ARGV[0] == months[4]
  print "April #{year}".center(20)
end
if ARGV[0] == months[5]
  print "May #{year}".center(20)
end
if ARGV[0] == months[6]
  print "June #{year}".center(20)
end
if ARGV[0] == months[7]
  print "July #{year}".center(20)
end
if ARGV[0] == months[8]
  print "August #{year}".center(20)
end
if ARGV[0] == months[9]
  print "September #{year}".center(20)
end
if ARGV[0] == months[10]
  print "October #{year}".center(20)
end
if ARGV[0] == months[11]
  print "November #{year}".center(20)
end
if ARGV[0] == months[12]
  print "December #{year}".center(20)
end


# if "#{year}".to_i % 400 == 0 || "#{year}".to_i % 4 == 0 || ARGV[0] == months[2]
#   print "                     \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29\n"
# end

if month == months[1]#January
  print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31\n"
elsif month == months[3]#march
  print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31\n"
elsif month == months[5]#may
  print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31\n"
elsif month == months[7]#july
  print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31\n"
elsif month == months[8]#august
  print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31\n"
elsif month == months[10]#october
  print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31\n"
elsif month == months[12]#december
  print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31\n"
# elsif "#{year}".to_i % 400 != 0 && "#{year}".to_i % 4 != 0 && ARGV[0] == months[2]
#   print "     #{year}  \nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n"
elsif month == months[2]#February No Leap
  print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n"
elsif month == months[4]#April
  print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30\n"
elsif month == months[6]#June
  print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30\n"
elsif month == months[9]#September
  print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30\n"
elsif month == months[11]#November
  print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30\n"
else

end







