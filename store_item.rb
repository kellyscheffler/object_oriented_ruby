# shoes1 = {:color => "red", :price => 50, :gender => "womens", :size => 8}
# shoes2 = {:color => "teal", :price => 65, :gender => "womens", :size => 7}
# shoes3 = {color: "gray", price: 55, gender: "mens", size: 12}

# p "We have #{shoes1[:gender]} shoes in #{shoes1[:color]} size #{shoes1[:size]} for $ #{shoes1[:price]}"

# p "We have #{shoes2[:gender]} shoes in #{shoes2[:color]} size #{shoes2[:size]} for $ #{shoes2[:price]}"

# p "We have #{shoes3[:gender]} shoes in #{shoes3[:color]} size #{shoes3[:size]} for $ #{shoes3[:price]}"

class Shoes

  attr_reader :color, :price, :gender, :size
  attr_writer :color, :price, :gender, :size

  def initialize(input_options)
    @color = input_options[:color]
    @price = input_options[:price]
    @gender = input_options[:gender]
    @size = input_options[:size]
  end

  def stock
    "We have #{color} #{gender} shoes in size #{size} available for $#{price}."
  end
end



shoes1 = Shoes.new({:color => "red", :price => 50, :gender => "womens", :size => 8})
p shoes1.price
p shoes1.color
p shoes1.size
p shoes1.stock

