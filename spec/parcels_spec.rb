require('rspec')
require('parcels')

describe(Parcel) do
  describe("volume") do
    it("product of the dimensions") do
      parcel = Parcel.new(4, 4, 4, 0)
      expect(parcel.volume).to(eq(64))
    end

    it("returns the product of the dimensions and weight") do
      parcel = Parcel.new(3, 3, 3, 2)
      expect(parcel.cost_to_ship).to(eq(54))
    end
  end
end
