require_relative 'zeller'
class Month_work

attr_reader :year, :month

  def initialize(month, year)
    @month = month
    @year = year
  end

  def self.month_names
    months = ["0", "01","02", "03", "04", "05",
    "06", "07", "08", "09", "10", "11","12"]
  end

  def display_February
    month_list = Month_work.month_names

    # zeller_class = Zeller_work.new(month, year)
    # first_day = zeller_class.zeller(month,1)

    if ARGV[0] == month_list[2]
      print "February #{year}".center(20)
    end

    if month == month_list[2] && "#{year}".to_i % 400 != 0 && "#{year}".to_i % 4 != 0
      print"\nSu\sMo\sTu\sWe\sTh\sFr\sSa\n"
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
    elsif month == month_list[2] && "#{year}".to_i % 4 == 0 && "#{year}".to_i % 400 != 0
      print "\nSu\sMo\sTu\sWe\sTh\sFr\sSa\n"
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
    elsif month == month_list[2] && "#{year}".to_i % 400 == 0 && "#{year}".to_i % 4 == 0
      print "\nSu\sMo\sTu\sWe\sTh\sFr\sSa\n"
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
    month_list = Month_work.month_names

    if ARGV[0] == month_list[1]
      print "January #{year}".center(20)
    end
    if ARGV[0] == month_list[3]
      print "March #{year}".center(20)
    end
    if ARGV[0] == month_list[4]
      print "April #{year}".center(20)
    end
    if ARGV[0] == month_list[5]
      print "May #{year}".center(20)
    end
    if ARGV[0] == month_list[6]
      print "June #{year}".center(20)
    end
    if ARGV[0] == month_list[7]
      print "July #{year}".center(20)
    end
    if ARGV[0] == month_list[8]
      print "August #{year}".center(20)
    end
    if ARGV[0] == month_list[9]
      print "September #{year}".center(20)
    end
    if ARGV[0] == month_list[10]
      print "October #{year}".center(20)
    end
    if ARGV[0] == month_list[11]
      print "November #{year}".center(20)
    end
    if ARGV[0] == month_list[12]
      print "December #{year}".center(20)
    end

    case ARGV[0]
      when "01", "03", "05", "07", "08", "10","12"
        print "\nSu\sMo\sTu\sWe\sTh\sFr\sSa\n"
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
      when "04","06","06","11"
        print"\nSu\sMo\sTu\sWe\sTh\sFr\sSa\n"
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
        print "this is not a regular month"
      end
  end

end







