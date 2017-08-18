Given(/^un usuario quiere consultar placa incorrecta$/) do
  @auto = Auto.new(PlacasAuto.new :placa_incorrecta)
  @response_auto = @auto.create
end

Then(/^validar la placa$/) do
  #puts "ingresa a validar placa"
  #puts @response_auto
  #byebug
  expect(@response_auto['vehicle_information']['make']).to eq "NISSAN"
end

Given(/^un usuario quiere consultar placa correcta$/) do
  @auto = Auto.new(PlacasAuto.new :placa_correcta)
  @response_auto = @auto.create
end
