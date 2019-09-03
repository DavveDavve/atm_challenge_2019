class ATM
    attr_accessor :funds

    def initialize
        @funds = 1000
    end

    def withdraw(amount, pin_code, account, account_status)
        case
        when insufficient_funds_in_account?(amount, account)
            {status: false, message: 'insufficient funds', date: Date.today}
        when insufficient_funds_in_atm?(amount)
            {status: false, message: 'insufficient funds in account', date: Date.today}
        when incorrect_pin?(pin_code, account.pin_code)
            {status: false, message: 'wrong pin', date: Date.today}
        when card_expired?(account.exp_date)
            {status: false, message: 'card expired', date: Date.today}
       # when account_disabled?(account.account_status)
           # {status: false, message: 'account disabled', date: Date.today}
        when account_active?(account.account_status)
            {status: false, message: 'card disabled' account_status}
        else
            perform_transaction(amount, account)
        end
    end

    def account_disabled?(account_status)
        #account_status = {active: true, disabled: false}
        account_status != :activegit å
    end

    private
    def insufficient_funds_in_account?(amount, account)
        amount > account.balance
    end
    
    def perform_transaction(amount, account)
        @funds -= amount
        account.balance = account.balance - amount
        {status: true, message: 'success', date: Date.today, amount: amount}
    end
    
    def insufficient_funds_in_atm?(amount)
        @funds < amount
    end
    
    def incorrect_pin?(pin_code, actual_pin)
        pin_code != actual_pin
    end
    
    def card_expired?(exp_date)
        Date.strptime(exp_date, '%m/%y') < Date.today
    end
    
end
