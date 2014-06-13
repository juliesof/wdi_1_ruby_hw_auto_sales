# * has the same attributes as a new car
# * has a mileage
# * may have one or more damages (scuffed paint, missing hubcaps, etc.)
# * has a query method indicating whether the car has any damages



require_relative '../lib/car.rb'

  attr_reader :mileage
  attr_accessor :damages

  def initialize(mileage: , damages:)
    @mileage = mileage
    @damages = damages
  end

  def num_of_damages(damages:)

  end
# * has a value (same calculation as a new car, modified by mileage depreciation and the cost of all current damages)
# * all used cars have a constant mileage depreciation of 1% per 10,000 miles (0.0001% per mile)
  def depreciated_msrp_used_car (deprec_mspr: depreciated_msrp(msrp:, year:), num_damages: num_of_damages(damages:), mileage:)
    depreciation_rate = 0.05
    current_year = 2014
    depreciated_msrp(msrp:, year:)
    msrp * (1 - (depreciation_rate * (current_year-year)))
  end

  def sticker_price_used_car(markup:)
    (depreciated_msrp_used_car(msrp, year)) + (depreciated_msrp_used_car(msrp, year) * markup)
   end
end
