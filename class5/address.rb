# An address is a value type
class Address
  attr_accessor :street1, :street2, :suburb, :state,
                :post_code, :country, :address_type

  def initialize(address_type)
    @address_type = address_type
  end
end
