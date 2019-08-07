class Customer
  attr_reader :name, :wallet, :age, :drunkeness

  def initialize(name, wallet, age, drunkeness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkeness = drunkeness
  end


  def pay_for_drink(price_of_drink)
    @wallet -= price_of_drink
  end

end
