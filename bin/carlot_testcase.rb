require_relative '../lib/car.rb'


tesla = Car.new(make: 'tesla',model: 'F390',msrp: 50000,year: 2010)

puts tesla.depreciated_msrp(msrp: 50000, year: 2010)
  # def depreciated_msrp(msrp:, year_manufactured:)
  #   depreciation_rate = 0.05
  #   current_year = 2014
  #   msrp * (1 - (depreciation_rate * (current_year-year_manufactured)))
  # end

puts tesla.sticker_price(markup: 0.25)
   #  (depreciated_msrp(msrp, year_manufactured)) + (depreciated_msrp(msrp, year_manufactured) * markup)
   # end
