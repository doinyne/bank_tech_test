# bank_tech_test

Hello, I decided to use Ruby for this tech test. 

My bank is very generous and offers a £200 overdraft.

## to set up a new bank account 

```
irb

require './lib/bank.rb'

account = Bank.new
```
``` 
account.deposit(#integer) = to deposit cash
account.withdraw(#integer) = to withdraw cash
account.statement = printed statement with date stamp
account.balance = to view current balance of account 
```

## Specification

clone repo

run bundle install

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2023  
**And** a deposit of 2000 on 13-01-2023  
**And** a withdrawal of 500 on 14-01-2023  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

## How the bank account works

![Screenshot 2022-01-05 at 17 02 51](https://user-images.githubusercontent.com/68062425/148258461-b9709518-766d-4072-b798-62e198c64911.png)


## test/test coverage

![Screenshot 2022-01-05 at 17 05 54](https://user-images.githubusercontent.com/68062425/148258762-07b26955-de47-4dbb-8fd0-92ad1969e53e.png)


## User Stories 

``` 
As a User
I would like to make a deposit
So I can store money in my account

As a User
I would like to be able to withdrawal money
So I can use it

As a User
I would like to be able make a statement 
So I can see the activity on my account
```

Self assessment form
https://docs.google.com/forms/d/1Q-NnqVObbGLDHxlvbUfeAC7yBCf3eCjTmz6GOqC9Aeo/viewform?edit_requested=true
