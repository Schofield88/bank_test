require './lib/transaction'

describe Transaction do

  let (:trans) { Transaction.new }

  context "#read" do
    it "Reads your transaction activity" do
      expect(trans.read).to eq([])
    end
  end

end
