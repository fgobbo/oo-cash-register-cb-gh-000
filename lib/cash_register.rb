class CashRegister
  attr_accessor :total
  attr_reader :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  def add_item(name, price, quantity=1)
    1.upto(quantity) do
      @items << name
    end
    @last_transaction = price * quantity
    @total += @last_transaction
  end

  def apply_discount()
    if @discount > 0
      @total -= @discount*10
      "After the discount, the total comes to $#{@total}."
    else
      'There is no discount to apply.'
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
