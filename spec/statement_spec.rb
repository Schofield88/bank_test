require './lib/statement'

describe Statement do

  let (:state) { Statement.new }
  let (:output) { "date || credit || debit || balance\n10/04/2019 || 50.00 || - || 100.00" }
  let (:trans) { double :transaction, read: [{date: "10/04/2019", action: "50.00 || -", balance: "100.00"}] }

  context "#format" do
    it "Formats all your transaction data nicely" do
      expect(state.format(trans.read)).to eq(output)
    end
  end

end
