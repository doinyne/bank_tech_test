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
    @statement << { date: Date.today, balance: @balance }
  end

  def withdraw(amount)
    @balance -= amount
    @statement << { date: Date.today, balance: @balance }
  end

  # need to work out how to use credit and debit
  def statement
    puts 'date || credit || debit || balance ||'
    @statement.reverse.each do |transaction|
      puts "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} || #{transaction[:balance]}"
    end
  end
end
