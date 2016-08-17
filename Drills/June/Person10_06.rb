class Person
  attr_accessor :name, :age, :fav_food

  # Setter - Check out that equal sign.
  def set_fav_color=(color)
    @fav_color = color
  end

  def set_brother=(brother)
    @brother = brother
  end

  # Getter
  def get_fav_color
    @fav_color
  end

  def get_brother
    @brother
  end
end
