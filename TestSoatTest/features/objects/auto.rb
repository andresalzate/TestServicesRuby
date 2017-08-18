class Auto

  attr_accessor :placas_auto

  def initialize(placas)
    @placas = placas
  end

  def body_request
    {
        country_code: @placas.country_code,
        insurance_type: @placas.insurance_type,
        vehicle_data:
        {
            plate: @placas.placa
        }
    }
  end

  def create
    API::ConsultarPlaca.request(self.body_request)
  end
end
