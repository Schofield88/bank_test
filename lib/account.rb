require './lib/transactions'
require 'date'

class Account

  def initialize(transactions = Transactions.new)
    @balance = 0
    @transaction = transactions
  end

  def deposit(money)
    amount = money.to_s + " || -"
    balance = @balance + money
    @transaction.add(date: Date.today, balance: balance, amount: amount)
    @balance += money
  end

end
