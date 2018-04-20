class Guests

attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def remove_cash(amount)
    @wallet -= amount
  end

end
