require './lib/account'

describe "Bank" do

  let (:bank) { Account.new }

  context "#deposit" do
    it "Deposits 50" do
      bank.deposit(50)
      expect { bank.statement }.to output("date || credit || debit || balance\n#{Time.now.strftime("%m/%d/%Y")} || 50 ||  -  || 50\n").to_stdout
    end
  end

  context "#withdraw" do
    it "Deposits 50" do
      bank.deposit(50)
      bank.withdraw(10)
      expect { bank.statement }.to output("date || credit || debit || balance\n#{Time.now.strftime("%m/%d/%Y")} || 50 ||  -  || 50\n#{Time.now.strftime("%m/%d/%Y")} ||  -  || 10 || 40\n").to_stdout
    end
  end
end
