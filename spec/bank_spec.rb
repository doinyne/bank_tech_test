require 'bank'

describe Bank do
  it 'has a balance of zero' do
    expect(bank.balance).to eq 0
  end
end
