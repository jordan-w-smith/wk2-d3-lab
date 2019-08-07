class Pub
  attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks

  end

  def process_sale(customer, drink_price)
    customer.pay_for_drink(drink_price)
    @till += drink_price
  end

  def check_customer_age(customer)
    if customer.age >=18
      return true
    else
      return false
    end
  end

  def check_customer_drunkeness(customer)
    if customer.drunkeness >= 5
      return true
    else
      return false
    end
  end

end
