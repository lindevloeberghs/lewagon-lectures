class Vehicle

  attr_reader :total_kms, :needs_gas

  def initialize(wheel_nums, engine_type)
    @number_of_wheels = wheel_nums
    @engine_type = engine_type
    @engine_started = false
    @total_kms = 0
    @needs_gas = false
  end

  def drive(number_of_kms)
    start_engine
    @total_kms += number_of_kms
    @needs_gas = true
    stop_engine
  end

  private
  def start_engine
    @engine_started = true
  end

  def stop_engine
    @engine_started = false
  end

end

car = Vehicle.new(4, "gas")
p car.total_kms
p car.needs_gas
car.drive(80)
p car.total_kms
p car.needs_gas
car.drive(120)
p car.total_kms

truck = Vehicle.new(10, "diesel")

airplane = Vehicle.new(17, "jet")

