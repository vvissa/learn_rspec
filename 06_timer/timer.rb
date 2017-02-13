class Timer
  def initialize
      self.seconds = 0
  end
  
  def seconds
 @seconds = 0 
  end
  
  def seconds=( x )
      @sec=x
      if @sec < 60
          @secreal = @sec
          @min = 0
      else
      @min=@sec.to_i/60
      @secreal=@sec-(@min.to_i*60)
      end
      if @min < 60 
          @hreal = 0
          @minreal = @min
      else
          @hreal=@min.to_i/60
          @minreal=@min-(@hreal.to_i*60)
      end
      @time_string = @hreal.to_s.rjust(2,"0")+":"+@minreal.to_s.rjust(2,"0")+":"+@secreal.to_s.rjust(2,"0")
      
  end
  
  def time_string
      @time_string
  end
end
