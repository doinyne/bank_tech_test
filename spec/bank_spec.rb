require 'bank'

describe Bank do
  let(:account) { Bank.new }
  it 'has a balance of zero' do
    expect(account.balance).to eq 0
  end
end
