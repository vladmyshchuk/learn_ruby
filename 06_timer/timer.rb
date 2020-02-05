class Timer

  attr_accessor( :seconds, :time_string)
  
  def seconds
    @seconds = 0
  end

  def time_string
    @time_string
  end

  def padded(n)
    n < 10 ? "0%s" %n : "%s" %n
  end
  
  def hours_minutes_seconds(secs)
    hours = secs / 3600
    minutes = (secs - hours * 3600) / 60
    remaining_secs = secs % 60
    [padded(hours), padded(minutes), padded(remaining_secs)]
  end

  def seconds=(n)
    @time_string = "%s:%s:%s" % hours_minutes_seconds(n)
  end

end