class Bear

  attr_accessor(:name, :type)

  def initialize(input_name, input_type)
    @name = input_name
    @type = input_type
    @food = []
  end


  def roar()
    return "Roar"
  end

  def take_fish_from_river(river)
    fish = river.get_fish()
    @food << fish if !fish.nil?
  end

end

