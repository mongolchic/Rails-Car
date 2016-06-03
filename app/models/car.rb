class Car

  def initialize (make, year)
    @make = make
    @year = year
    @speed = 0
    @lights_on = true
    @parking_break_on = true
    @parking_break_off = false


    # @color = cookies[:color]
  end

  def speed
    @speed
  end

  def full_car
    @make + " " + @year
  end

  def accelerate
    @speed += 10
  end

  def brake
    if @speed < 7
      @speed = 0
    else
      @speed -= 7
    end
  end

  def lights_on
    @lights_on = !@lights_on
  end

  def parking_break_on
    @parking_break_on == true
  end

  def parking_break_off
    @parking_break_off == false
  end

end
