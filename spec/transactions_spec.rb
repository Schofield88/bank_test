require './lib/transactions'

describe Transactions do

  let (:trans) { Transactions.new }

  context "#read" do
    it "Reads your transaction activity" do
      expect(trans.read).to eq([])
    end
  end

  context "#add" do
    it "Adds new transaction data to array" do
      trans.add({date: "09/04/2019", balance: "10.00", amount: "50.00"})
      expect(trans.read).to eq ([{date: "09/04/2019", balance: "10.00", amount: "50.00"}])
    end
  end

end
