class PlacasAuto
  include DataMagic
  attr_accessor :country_code, :insurance_type, :placa

  def initialize create_type
    obj = data_for "placas_auto/#{create_type.to_s}"
    @country_code = obj['country_code']
    @insurance_type = obj['insurance_type']
    @placa = obj['placa']
  end

end
