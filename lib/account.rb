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
    @balance += money
    @transaction.add(date: Time.now.strftime("%m/%d/%Y"), balance: @balance, amount: (money.to_s + " ||  - "))
  end

  def withdraw(money)
    @balance -= money
    @transaction.add(date: Time.now.strftime("%m/%d/%Y"), balance: @balance, amount: (" -  || " + money.to_s))
  end

  def statement
    @statement.format(@transaction.read)
  end

end
