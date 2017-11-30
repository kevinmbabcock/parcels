class Parcel
  def initialize(length, width, depth, weight)
    @width = width.to_i
    @length = length.to_i
    @depth = depth.to_i
    @weight = weight.to_i
  end

  def volume
    @width * @length * @depth
  end

  def cost_to_ship
    @width * @length * @depth * @weight
  end
end
