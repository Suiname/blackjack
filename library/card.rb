class Card
  attr_reader :suit
  def initialize(default = {})
    @value = default[:value]
    @suit = default[:suit]
  end

  def value
    # if @value == "K"
    #   return 10
    # end
    # return @value
    return @value if @value.class == Fixnum || !@value
    @value == "A" ? 11 : 10
  end
end
