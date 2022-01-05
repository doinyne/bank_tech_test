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

  # at the moment you cannot withdraw more than -200 but if you were to deposit 10 you can withdraw to -210 
  def withdraw(amount)
    fail "The overdraft limit has been exceeded" if overdraft_exceeded?(amount)
    @balance -= amount
    @statement << { date: Date.today, withdraw: amount, balance: @balance }
  end

  # need to work out how to use credit and debit
  # {transaction[:credit]} || #{transaction[:debit]} ||
  # credit || debit ||
  def statement
    puts 'date || deposited || withdrawn || balance ||'
    @statement.reverse.each do |transaction|
      puts "#{transaction[:date]} || #{transaction[:deposit]} || #{transaction[:withdraw]} || #{transaction[:balance]}"
    end
  end

  def overdraft_exceeded?(amount)
    @balance - amount < MINIMUM_BALANCE
  end 

  private 


end
