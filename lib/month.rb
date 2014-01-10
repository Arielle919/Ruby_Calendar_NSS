
class Month_work

attr_reader :year, :month

  def initialize(month, year)
    @month = month
    @year = year
  end

  def display
    months = ["0", "January","February", "March", "April", "May",
   "June", "July", "August", "September", "October", "November","December"]

   #  if month == months[2] && "#{year}".to_i % 400 != 0 && "#{year}".to_i % 4 != 0
   #    print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n"
   #  elsif month == months[2] && "#{year}".to_i % 4 == 0 && "#{year}".to_i % 400 != 0
   #    print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29\n"
   #  elsif month == months[2] && "#{year}".to_i % 400 == 0 && "#{year}".to_i % 4 == 0
   #    print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29\n"
   #  else

   #  end
    if @month == months[2]
      print "this is month and year"
    else
      print"no month"
    end


  end

end

# weekdays = ["Sunday", "Monday", "Tuesday",
#     "Wednesday", "Thursday", "Friday", "Saturday"]

#   months = ["0", "January","February", "March", "April", "May",
#    "June", "July", "August", "September", "October", "November","December"]

#   if ARGV[0] == months[1]
#     print "January #{year}".center(20)
#   end
#   if ARGV[0] == months[2]
#     print "February #{year}".center(20)
#   end
#   if ARGV[0] == months[3]
#     print "March #{year}".center(20)
#   end
#   if ARGV[0] == months[4]
#     print "April #{year}".center(20)
#   end
#   if ARGV[0] == months[5]
#     print "May #{year}".center(20)
#   end
#   if ARGV[0] == months[6]
#     print "June #{year}".center(20)
#   end
#   if ARGV[0] == months[7]
#     print "July #{year}".center(20)
#   end
#   if ARGV[0] == months[8]
#     print "August #{year}".center(20)
#   end
#   if ARGV[0] == months[9]
#     print "September #{year}".center(20)
#   end
#   if ARGV[0] == months[10]
#     print "October #{year}".center(20)
#   end
#   if ARGV[0] == months[11]
#     print "November #{year}".center(20)
#   end
#   if ARGV[0] == months[12]
#     print "December #{year}".center(20)
#   end

#     case ARGV[0]
#    when "January", "March", "May", "July", "August", "October","December"
#     print "\nSu Mo Tu We Th Fr Sa\n 1  2  3  4  5  6  7\n 8  9 10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31\n"
#    when "April","June","September","November"
#     print "\nSu Mo Tu We Th Fr Sa\n 1  2  3  4  5  6  7\n 8  9  10 11 12 13 14\n 15 16 17 18 19 20 21\n 22 23 24 25 26 27 28\n 29 30\n"
#    else
#    end

  # if month == months[2] && "#{year}".to_i % 400 != 0 && "#{year}".to_i % 4 != 0
  #   print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n"
  # elsif month == months[2] && "#{year}".to_i % 4 == 0 && "#{year}".to_i % 400 != 0
  #   print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29\n"
  # elsif month == months[2] && "#{year}".to_i % 400 == 0 && "#{year}".to_i % 4 == 0
  #   print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29\n"
  # else

  # end

  # if month == months[1] #January
  #   print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31\n"
  # elsif month == months[3]#march
  #   print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31\n"
  # elsif month == months[5]#may
  #   print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31\n"
  # elsif month == months[7]#july
  #   print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31\n"
  # elsif month == months[8]#august
  #   print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31\n"
  # elsif month == months[10]#october
  #   print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31\n"
  # elsif month == months[12]#december
  #   print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31\n"
  # elsif month == months[2] && "#{year}".to_i % 400 != 0 && "#{year}".to_i % 4 != 0
  #   print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n"
  # elsif month == months[2] && "#{year}".to_i % 4 == 0 && "#{year}".to_i % 400 != 0
  #   print "\nSu Mo Tu We Th Fr Sa\n         1  2  3  4\n5  6  7  8  9  10 11\n12 13 14 15 16 17 18\n19 20 21 22 23 24 25\n26 27 28 29\n"
  # elsif month == months[2] && "#{year}".to_i % 400 == 0 && "#{year}".to_i % 4 == 0
  #   print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29\n"
  # elsif month == months[4]#April
  #   print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30\n"
  # elsif month == months[6]#June
  #   print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30\n"
  # elsif month == months[9]#September
  #   print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30\n"
  # elsif month == months[11]#November
  #   print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30\n"
  # else
  #   # print "\nSu Mo Tu We Th Fr Sa\n1  2  3  4  5  6  7\n8  9  10 11 12 13 14\n15 16 17 18 19 20 21\n22 23 24 25 26 27 28\n29 30 31\n"
  # end






