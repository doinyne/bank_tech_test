require 'bank'

describe Bank do
  let(:account) { Bank.new }
  it 'has a balance of zero' do
    expect(account.balance).to eq 0
  end

  describe '#deposit' do
    it { is_expected.to respond_to(:deposit).with(1).argument }
    it 'will deposit account with 10' do
      expect { account.deposit(10) }.to change { account.balance }.by 10
    end
  end
end
