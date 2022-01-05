# frozen_string_literal: true

require 'date'

class Bank
  attr_reader :balance, :statment

  MINIMUM_BALANCE = -200

  def initialize
    @balance = 0
    @statement = []
  end

  def deposit(amount)
    @balance += amount
    @statement << { date: Date.today, deposit: amount, balance: @balance }
  end

  def withdraw(amount)
    raise 'The overdraft limit has been exceeded' if overdraft_exceeded?(amount)

    @balance -= amount
    @statement << { date: Date.today, withdraw: amount, balance: @balance }
  end

  def statement
    puts 'date || deposited || withdrawn || balance'
    @statement.reverse.each do |transaction|
      puts "#{transaction[:date]} || #{transaction[:deposit]} || #{transaction[:withdraw]} || #{transaction[:balance]}"
    end
  end

  def overdraft_exceeded?(amount)
    @balance - amount < MINIMUM_BALANCE
  end
end
