# Atm_challenge_2019
This is a simulated Atm machine that creates a user and account that can acces, withdraw, and deposit funds.

# Getting Started
These instructions get you a copy of the project up and running on your local machine for development and testing purposes. See deploymnent for notes on how to deploy the project on a live system.

## Prerequisites

Things that you need, to install the software, and how to install them.
First install Bundler in terminal.

```
gem install bundler
```
Move into desired directory in terminal.
```
cd <desired directory>
```
Then create a Gemfile in terminal.
```
touch Gemfile
```
Move into Gemfile and add rspec dependency in code editor.
```
source 'https://rubygems.org'
gem 'rspec'
```
Use bundler to install rspec in terminal.
```
bundle install
```
       

## Installing

Pull down from repository and open in IRB or in your code editor.

Initiate in terminal.
```
rspec --init
```

Modify created Rspec file in code editor.
```
--require spec_helper
--format documentation
--color
```

# Running the tests

To run the test use use the Rspec command 
```
rspec spec
```
## Breakdown into end to end tests

Refer to user stories below.


# User Stories

As a programmer
in order to produce good quality code
I want to work in a test driven way and unit test my code

As a user
In order to make withdrawal
The ATM need to have funds

As a user
In order to know if my withdrawal was successful or unsuccessful
I want to receive a message with my withdrawal details

As an ATM operator
In order for the right person to make a withdrawal.
I want each person to have a seperate account.
In order to make a withdrawal
The ATM needs to have funds

As a User               
In order to know if my withdrawal was successful or unsuccessful           
I want to receive a message with my withdrawal details

As an ATM Operator
In order for the right person to make a withdrawal
I want each person to have a seperate account

As an ATM operator           
In order to ensure that an Account holder can only withdraw funds that he has balance for           
I want to allow a withdrawal only if there are sufficient funds in the account

As an Atm operator
In order to ensure that an account holder can only withdraw funds that he has balance for I want to allow withdrawal
only if there are sufficent funds in the account.

As an ATM operator
In order for our costumers to withdraw funds
I need to make sure that I only allow withdrawals if there are funds available

As a Customer
To keep my funds secure
I want a secure Pin code & an expiry date on my card that allows only me access to my funds

As an ATM operator
In order to allow access to active customers
I want to allow withdrawals from only active accounts.

As a bank Customer
In order to withdraw funds in even amounts
I want to receive funds in 5, 10, and 20$ bills

As a Customer
In order to manage my funds
I need to have a personal account

As an ATM operator
In order to keep track of our customers
We want to assign each account to a separate person.

As a Person
To be able to use banking services to manage my funds
I would like to be able to create a bank account.

As a person with a bank account
In order to be able to put my funds in the account
I would like to be able to make a deposit.

As a person without a bank account
In order to prevent me from using the wrong bank account
I should not be able to make a deposit.

# Authors
Alex Saxena and David Izosimov

# Acknowledgements
- Tip fedora to CraftAcademy's code
