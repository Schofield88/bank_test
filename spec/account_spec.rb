require './lib/account'

describe Account do

  let (:account) { Account.new(transactions, statement) }
  let (:transactions) { double :transactions }
  let (:statement) { double :statement }

  context "#deposit" do

    before { expect(transactions).to receive(:add) }

    it "Passes transaction information on deposit" do
      allow(transactions).to receive(:add)
      account.deposit(50)
    end
  end

  context "#withdraw" do

    before { expect(transactions).to receive(:add) }

    it "Passes transaction information on withdraw" do
      allow(transactions).to receive(:add)
      account.withdraw(50)
    end
  end

  context "#statement" do

    before { expect(statement).to receive(:format) }

    it "Prints out a statement" do
      allow(transactions).to receive(:read)
      allow(statement).to receive(:format)
      account.statement
    end
  end

end
