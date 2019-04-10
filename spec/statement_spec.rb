require './lib/statement'

describe Statement do

  let (:state) { Statement.new }
  let (:trans) { double :transactions, read: [{date: "10/04/2019", balance: "100.00", amount: "50.00 || -"}] }


    it "Formats all your transaction data nicely" do
      expect { state.format(trans.read) }.to output("date || credit || debit || balance\n10/04/2019 || 50.00 || - || 100.00\n").to_stdout

    end


end
