require './lib/account'

describe Account do

  let (:account) { Account.new(transactions) }
  let (:transactions) { double :transactions }

  context "#deposit" do

    before { expect(transactions).to receive(:add) }

    it "Deposits the munny in your account, son" do
      allow(transactions).to receive(:add)
      account.deposit(50)
    end
  end

end
