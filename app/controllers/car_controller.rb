class CarController < ApplicationController
  def createcar

    if !params.has_key?(:make) ||
       !params.has_key?(:year) ||

       if params[:make].strip.empty? || params[:year].strip.empty?
       end

      # render ("accelerate.html.erb")
    else

      @car = Car.new(params[:make], params[:year])
      session[:car] = @car.to_yaml
      # @car = YAML.load(session[:car])
      # redirect_to "/car/createcar"
    end
  end

  def accelerate
  @car = YAML.load(session[:car])
  @car.accelerate
  session[:car] = @car.to_yaml
  render ("/car/createcar")
  end

  def brake
  @car = YAML.load(session[:car])
  @car.brake
  session[:car] = @car.to_yaml
  render ("/car/createcar")
  end

  def lights_on
  @car = YAML.load(session[:car])
  @car.lights_on
  session[:car] = @car.to_yaml
  render ("/car/createcar")
  end

  def parking_break_on
  @car = YAML.load(session[:car])
  @car.parking_break_on
  session[:car] = @car.to_yaml
  render ("/car/createcar")
  end

  def parking_break_off
  @car = YAML.load(session[:car])
  @car.parking_break_off
  session[:car] = @car.to_yaml
  render ("/car/createcar")
  end
end
