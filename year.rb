# month = ARGV[0]
year = ARGV[0]

class Calendar
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
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

months = ["January", "February","March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

if "#{year}".to_i % 400 == 0 || "#{year}".to_i % 4 == 0
  print "                           #{year}
January                    February                    March
Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
29 30 31                   29                          29 30 31

April                      May                         June
Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
29 30                      29 30 31                    29 30

July                       August                      September
Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
29 30 31                   29 30 31                    29 30

October                    November                    December
Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
29 30 31                   29 30                       29 30 31\n"
end


if "#{year}".to_i % 400 != 0 && "#{year}".to_i % 4 != 0
  print "                           #{year}
January                    February                    March
Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
29 30 31                                               29 30 31

April                      May                         June
Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
29 30                      29 30 31                    29 30

July                       August                      September
Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
29 30 31                   29 30 31                    29 30

October                    November                    December
Su Mo Tu We Th Fr Sa       Su Mo Tu We Th Fr Sa        Su Mo Tu We Th Fr Sa
1  2  3  4  5  6  7        1  2  3  4  5  6  7         1  2  3  4  5  6  7
8  9  10 11 12 13 14       8  9  10 11 12 13 14        8  9  10 11 12 13 14
15 16 17 18 19 20 21       15 16 17 18 19 20 21        15 16 17 18 19 20 21
22 23 24 25 26 27 28       22 23 24 25 26 27 28        22 23 24 25 26 27 28
29 30 31                   29 30                       29 30 31\n"
end




