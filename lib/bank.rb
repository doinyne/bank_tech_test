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

  # at the moment you cannot withdraw more than -200 but if you were to deposit 10 you can withdraw to -210 
  def withdraw(amount)
    fail "The overdraft limit has been exceeded" if overdraft_exceeded?(amount)
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

  private 

  def overdraft_exceeded?(amount) 
    @balance + amount <= MINIMUM_BALANCE
  end 
end
