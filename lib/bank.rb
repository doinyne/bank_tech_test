# frozen_string_literal: true

require 'date'

class Bank
  attr_reader :balance

  MINIMUM_BALANCE = -200

  def initialize
    @balance = 0
    @statement = []
  end

  def deposit(amount)
    @balance += amount
    @statement << { date: Date.today, credit: amount, balance: @balance }
  end

  def withdraw(amount)
    raise 'The overdraft limit has been exceeded' if overdraft_exceeded?(amount)

    @balance -= amount
    @statement << { date: Date.today, debit: amount, balance: @balance }
  end

  def statement
    puts 'date || credit || debit || balance'
    @statement.reverse.each do |transaction|
      puts "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} || #{transaction[:balance]}"
    end
  end

  private

  def overdraft_exceeded?(amount)
    @balance - amount < MINIMUM_BALANCE
  end
end
