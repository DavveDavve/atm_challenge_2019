class Account

    attr_accessor :account_status, :exp_date, :owner
    
    STANDARD_VALIDITY_YRS = 5

    def initialize(attrs = {})
        @exp_date = Date.today.next_year(5).strftime("%m/%y")
        @account_status = :active
        set_owner(attrs[:owner])
    end

    def self.disable(account)
        account.account_status = :disabled
    end

    def disable
        @account_status = :disabled
    end

    private

    def set_owner(obj)
        obj == nil ? missing_owner : @owner = obj
    end

    def missing_owner
        raise "An Account owner is required"
    end

    def set_expire_date
        Date.today.next_year(Account: :STANDARD_VALIDITY_YRS).strftime('%m/%Y')
    end
end