# shoes1 = {:color => "red", :price => 50, :gender => "womens", :size => 8}
# shoes2 = {:color => "teal", :price => 65, :gender => "womens", :size => 7}
# shoes3 = {color: "gray", price: 55, gender: "mens", size: 12}

# p "We have #{shoes1[:gender]} shoes in #{shoes1[:color]} size #{shoes1[:size]} for $ #{shoes1[:price]}"

# p "We have #{shoes2[:gender]} shoes in #{shoes2[:color]} size #{shoes2[:size]} for $ #{shoes2[:price]}"

# p "We have #{shoes3[:gender]} shoes in #{shoes3[:color]} size #{shoes3[:size]} for $ #{shoes3[:price]}"

class Shoes

  attr_reader :color, :price, :gender, :size
  attr_writer :color, :price, :gender, :size

  def initialize(input_color, input_price, input_gender, input_size)
    @color = input_color
    @price = input_price
    @gender = input_gender
    @size = input_size
  end

  # def color
  #   @color
  # end

  # def price
  #   @price
  # end

  # def gender
  #   @gender
  # end

  # def size
  #   @size
  # end

  # def color=(new_color)
  #   @color = new_color
  # end

  # def price=(new_price)
  #   @price = new_price
  # end

  # def gender=(new_gender)
  #   @gender = new_gender
  # end

  # def size=(new_size)
  #   @size = new_size
  # end

  def stock
    "We have #{color} #{gender} shoes in size #{size} available for $#{price}."
  end
end



shoes1 = Shoes.new("red", 50, "womens", 8)
shoes1.price = 30
shoes1.color = "teal"
shoes1.gender = "mens"
shoes1.size = 10
p shoes1.price
p shoes1.color
p shoes1.size
p shoes1.stock