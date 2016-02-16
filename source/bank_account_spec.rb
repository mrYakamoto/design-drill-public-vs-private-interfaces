require_relative 'bank_account'

describe BankAccount do
  let(:acct) { BankAccount.new("Junipero Serra", "Checking", "347-923-239")
 }
  describe '#to_s' do
    it 'returns account information string' do
      expect(acct.to_s).to eq "Junipero Serra: Checking account number *****3239."
    end
  end
end
