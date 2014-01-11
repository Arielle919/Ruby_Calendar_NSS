class Month_work

attr_reader :year, :month

  def initialize(month, year)
    @month = month
    @year = year
  end

  def display_February
    months = ["0", "January","February", "March", "April", "May",
   "June", "July", "August", "September", "October", "November","December"]

    if month == months[2] && "#{year}".to_i % 400 != 0 && "#{year}".to_i % 4 != 0
      print "#{month} #{year}".center(20)+"\nSu Mo Tu We Th Fr Sa\n"
        i = 0
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 7
        end
        print "\n"
        i = 7
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 14
        end
        print "\n"
        i = 14
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 21
        end
        print "\n"
        i = 21
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 28
        end
    elsif month == months[2] && "#{year}".to_i % 4 == 0 && "#{year}".to_i % 400 != 0
      print "#{month} #{year}".center(20)+"\nSu Mo Tu We Th Fr Sa\n"
        i = 0
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 7
        end
        print "\n"
        i = 7
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 14
        end
        print "\n"
        i = 14
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 21
        end
        print "\n"
        i = 21
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 28
        end
        print "\n"
        i = 28
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 29
        end
    elsif month == months[2] && "#{year}".to_i % 400 == 0 && "#{year}".to_i % 4 == 0
      print "#{month} #{year}".center(20)+"\nSu Mo Tu We Th Fr Sa\n"
        i = 0
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 7
        end
        print "\n"
        i = 7
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 14
        end
        print "\n"
        i = 14
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 21
        end
        print "\n"
        i = 21
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 28
        end
        print "\n"
        i = 28
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 29
        end
    else
      print"no month"
    end
  end

  def display_reg_months
    case month
      when "January", "March", "May", "July", "August", "October","December"
        print "#{month} #{year}".center(20)+"\nSu Mo Tu We Th Fr Sa\n"
        i = 0
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 7
        end
        print "\n"
        i = 7
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 14
        end
        print "\n"
        i = 14
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 21
        end
        print "\n"
        i = 21
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 28
        end
        print "\n"
        i = 28
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 31
        end
      when "April","June","September","November"
              print "#{month} #{year}".center(20)+"\nSu Mo Tu We Th Fr Sa\n"
        i = 0
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 7
        end
        print "\n"
        i = 7
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 14
        end
        print "\n"
        i = 14
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 21
        end
        print "\n"
        i = 21
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 28
        end
        print "\n"
        i = 28
        loop do
          i += 1
          print "#{i}".center(3)
          break if i >= 30
        end
      else
      print "this is not a month"
    end
  end

end







