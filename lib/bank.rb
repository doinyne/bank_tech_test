require 'date'

class Bank
  attr_reader :balance, :statment

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

  def statement
    puts 'date || credit || debit || balance ||'
    @statement.reverse.each { |transaction| puts "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} || #{transaction[:balance]}" }
  end
end
