# frozen_string_literal: true

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

  describe '#withdraw' do
    account = Bank.new
    account.deposit(10)
    it { is_expected.to respond_to(:withdraw).with(1).argument }
    it 'will withdraw account with 10' do
      expect { account.withdraw(10) }.to change { account.balance }.by(-10)
    end
  end

  describe '#balance' do
    it { is_expected.to respond_to(:balance) }
    it 'will return the balance of the account' do
      expect(account.balance).to eq 0
    end
  end

  describe '#statement' do
    it { is_expected.to respond_to(:statement) }
    it 'will show you a statement of transactions' do
      account = Bank.new
      account.deposit(10)
      account.withdraw(5)
      expect(account.statement).to eq [{ withdraw: 5, date: Date.today, balance: 5 },
                                       { deposit: 10, date: Date.today, balance: 10 }]
    end
  end
end
