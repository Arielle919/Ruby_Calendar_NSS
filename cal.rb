month = ARGV[0]
year = ARGV[1]

class Calendars
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end

  def Zeller(month, day)
    #march = 3, april = 4, may =5, december=12,  .... january = 13, february = 14
    #monthes = Sat = 0, Sun = 1, Monday = 2, Weds = 3, Thursday = 4,
    months = ["march", "april", "may", "june", "july", "august", "september", "october", "november", "december", "january", "february"]
    weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

  end

  # name = ARGV[0]
  # name.each_char do |char|
  # puts "Give me a.. #{char.upcase}"
  # end

#From tutorial javascript == transform to ruby
# //Zeller Method project
# // We'll be using Zeller's congruence, which is an algorithm devised by Christian Zeller to
# //calculate the day of the week for any Julian or Gregorian calendar date:
# //h = ( ( q +( (m+1) * 26 // 10)+ Y +( Y // 4)+ 6 * (Y // 100)+ (Y // 400)) % 7 )
# //... all of which translates to this:
# //dayOfWeek = (dayOfMonth + ((month + 1) * 26 // 10) + year + (year // 4) +
# //   6 * (year/ / 100) + (year // 400)) % 7)
# // Note that in this algorithm, January and February are counted as
# //months #13 & #14 of the previous year, which will need to factor into your method.

function zeller(q, m, Y){
    // Where: q = day of month; m = month of the year (string); y = year
    // This method should return the day of the week as a string
    //REPLACE THIS CODE WITH YOUR ZELLER CONGRUENCE METHOD
    var month=['January','February','March','April','May','June','July','August','September','October','November','December'];
    var weekDay=['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
    for(var  i=0; i<12;i++){
        if(month[i]==m){
            m=i+1;
            break;
        }
    }
    if (m<3){
        m = m+12;
        Y -= 1;
    }
    var h = (q+ parseInt(((m + 1) * 26) / 10) + Y + parseInt(Y / 4) + 6 * parseInt(Y / 100) + parseInt(Y / 400) - 1) % 7
    return weekDay[h];


}