require 'forwardable'

class Car
  attr_reader :price

  def initialize price
    @price = price
  end
end

class VATCalculator
  extend Forwardable

  def_delegator :@car, :price, :old_price

  def initialize car
    @car = car
  end

  def price
    old_price * 1.23
  end
end
