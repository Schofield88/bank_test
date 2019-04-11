require './lib/transactions'
require './lib/statement'
require 'date'

class Account

  def initialize(transactions = Transactions.new, statement = Statement.new)
    @balance = 0
    @transaction = transactions
    @statement = statement
  end

  def deposit(money)
    @transaction.add(date: Time.now.strftime("%m/%d/%Y"), balance: (@balance + money), amount: (money.to_s + " || -"))
    @balance += money
  end

  def withdraw(money)
    @transaction.add(date: Time.now.strftime("%m/%d/%Y"), balance: (@balance + money), amount: (" - ||" + money.to_s))
    @balance -= money
  end

  def statement
    @statement.format(@transaction.read)
  end

end
