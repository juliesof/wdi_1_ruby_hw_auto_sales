require 'pry'
# has a make, model, and year of manufacture
# has an MSRP (original retail price)
# has a value (MSRP modified by depreciation, taking the year of manufacture into account)
# all cars have a constant depreciation of 5% per year
# has a manager markup
# has a price (value modified by the manager markup)

class Car

  attr_reader :make, :model, :msrp, :year
  attr_accessor :markup

  def initialize(make:, model:, year:, msrp:)
    @make = make #make here is a LOCAL variable
    @model = model
    @year = year
    @msrp = msrp
    @markup = 0.25
  end
  def depreciated_msrp(msrp:, year:)
    depreciation_rate = 0.05
    current_year = 2014
    msrp * (1 - (depreciation_rate * (current_year-year)))
  end

  def sticker_price(markup:)
    (depreciated_msrp(msrp, year)) + (depreciated_msrp(msrp, year) * markup)
   end
end

