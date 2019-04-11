# Bank Test Feb 2019

## Setup

Clone the repository; then, from the command line, run:

`bundle install`

to install project dependencies.

## Run

Inside the project directory, type:

`irb`

Once in the REPL:

`require '/lib/account'`

Instantiate a new account with:

`<name> = Account.new`

To deposit money in your account:

`<name>.deposit(50)`

To withdraw:

`<name>.withdraw(10)`

To view your statement:

`<name>.statement`

## Approach

The objective of this test was not simply to meet the requirements; it was to employ and demonstrate a full development cycle for a piece of production-quality software. As such, the stages were:

Plan > Model > TDD

## Design rationale

The requirements for this particular test can be met simply with a spike in under an hour. However, with a view to applying Object-Oriented design principles, the following decisions were made.

1.) Identified concerns should be properly abstracted/separated
2.) Code should be readable and correctly formatted
3.) The code should be fully covered with a comprehensive test suite that drove the development

The programme has 3 classes: Account, which provides the interface for the client (the withdraw, deposit and statement methods), Transactions, which appends transaction data to an internal array, and Statement, whose job it was to format the transaction data and pass it to Accounts statement method.

Initially, the deposit, withdraw and statement methods were planned to be classes as well, with an additional class for the balance. Following a day's work it became obvious that this was over-abstraction, making the code unnecessarily complicated. The decision was made to store the balance on an instance variable that would remain unexposed, and attached the withdraw, deposit and statement methods to the Account class. The
