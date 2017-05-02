class Timer
  #write your code here
  def initialize
    @seconds = 0
  end

  attr_accessor :seconds

  def time_string
    @hour = @seconds/3600
    @minute = @seconds/60 - @hour*60
    @second = @seconds - @hour*3600 - @minute*60
    string = "#{totwoplaces(@hour)}:#{totwoplaces(@minute)}:#{totwoplaces(@second)}"
  end

  def totwoplaces(num)
    num.to_s.length > 1 ? num.to_s : num = "0#{num}"
  end
end
