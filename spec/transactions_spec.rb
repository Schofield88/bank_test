require './lib/transaction'

describe Transaction do

  let (:trans) { Transaction.new }

  context "#read" do
    it "Reads your transaction activity" do
      expect(trans.read).to eq([])
    end
  end

  context "#add" do
    it "Adds new transaction data to array" do
      trans.add({date: "09/04/2019", action: "credit", balance: 10})
      expect(trans.read).to eq ([{date: "09/04/2019", action: "credit", balance: 10}])
    end
  end

end
