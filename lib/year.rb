require_relative 'month'

class Year
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end

  def display
    puts "display from YEAR year.rb"
  end

end

# months = ["January", "February","March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

# if "#{year}".to_i % 400 == 0 || "#{year}".to_i % 4 == 0
#   print "                           #{year}
# January                    February                    March
# Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
# 1  2  3  4  5  6  7                 1  2  3  4                     1  2  3
# 8  9  10 11 12 13 14       5  6  7  8  9  10 11        4  5  6  7  8  9  10
# 15 16 17 18 19 20 21       12 13 14 15 16 17 18        11 12 13 14 15 16 17
# 22 23 24 25 26 27 28       19 20 21 22 23 24 25        18 19 20 21 22 23 24
# 29 30 31                   26 27 28 29                 25 27 28 29 30 31

# April                      May                         June
# Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
# 1  2  3  4  5  6  7              1  2  3  4  5                        1  2
# 8  9  10 11 12 13 14       6  7  8  9  10 11 12        3  4  5  6  7  8  9
# 15 16 17 18 19 20 21       13 14 15 16 17 18 19        10 11 12 13 14 15 16
# 22 23 24 25 26 27 28       20 21 22 23 24 25 26        17 18 19 20 21 22 23
# 29 30                      27 28 29 30 31              24 25 26 27 28 29 30

# July                       August                      September
# Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
# 1  2  3  4  5  6  7                 1  2  3  4                           1
# 8  9  10 11 12 13 14       5  6  7  8  9  10 11        2  3  4  5  6  7  8
# 15 16 17 18 19 20 21       12 13 14 15 16 17 18        9  10 11 12 13 14 15
# 22 23 24 25 26 27 28       19 20 21 22 23 24 25        16 17 18 19 20 21 22
# 29 30 31                   26 27 28 29                 23 24 25 26 27 28 29
#                                                        30 31

# October                    November                    December
# Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
#    1  2  3  4  5  6                    1  2  3                           1
# 7  8  9  10 11 12 13       4  5  6  7  8  9  10        2  3  4  5  6  7  8
# 14 15 16 17 18 19 20       11 12 13 14 15 16 17        9  10 11 12 13 14 15
# 21 22 23 24 25 26 27       18 19 20 21 22 23 24        16 17 18 19 20 21 22
# 28 29 30 31                25 27 28 29 30 31           23 24 25 26 27 28 29
#                                                        30 31\n"
# end


# if "#{year}".to_i % 400 != 0 && "#{year}".to_i % 4 != 0
#   print "                           #{year}
# January                    February                    March
# Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
# 1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
# 8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
# 15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
# 22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
# 29 30 31                                               29 30 31

# April                      May                         June
# Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
# 1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
# 8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
# 15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
# 22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
# 29 30                      29 30 31                    29 30

# July                       August                      September
# Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
# 1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
# 8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
# 15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
# 22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
# 29 30 31                   29 30 31                    29 30

# October                    November                    December
# Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
# 1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
# 8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
# 15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
# 22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
# 29 30 31                   29 30                       29 30 31\n"
# end




