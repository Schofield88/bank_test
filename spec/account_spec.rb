require './lib/account'

describe Account do

  let (:account) { Account.new(transactions) }
  let (:transactions) { double :transactions }

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

end
