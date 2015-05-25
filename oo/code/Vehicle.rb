class Vehicle

  attr_reader :number_of_wheels, :needs_gas, :driven_km

  def initialize(number_of_wheels, engine_type)
    @number_of_wheels = number_of_wheels
    @engine_type = engine_type
    @needs_gas = true
    @driven_km = 0
    @engine_started = false
  end

  def fill_gas
    @needs_gas = false
  end

  def drive(km)
    start_engine
    @driven_km += km
    stop_engine
  end

  def start_engine
    @engine_started = true
  end

  def stop_engine
    @engine_started = false
  end

end


car = Vehicle.new(4, "diesel")
p car.number_of_wheels
p car.needs_gas
p car.fill_gas
p car.needs_gas
car.drive(180)
p car.driven_km

truck = Vehicle.new(10, "diesel")
p truck.number_of_wheels
p truck.needs_gas
p truck.fill_gas
p truck.needs_gas

airplane = Vehicle.new(17, "jet")
airplane.number_of_wheels
airplane.needs_gas
airplane.fill_gas
airplane.needs_gas
