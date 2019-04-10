class Transactions

  def initialize
    @transactions = []
  end

  def read
    @transactions
  end

  def add(date:, balance:, amount:)
    transaction = {date: date, amount: amount, balance: balance, }
    @transactions << transaction
  end

end
