class BankAccount

attr_accessor :balance, :status
attr_reader :name

@@all = []

def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
    @@all << self
end

 def deposit(deposit)
    self.balance += deposit
 end

def display_balance
    "Your balance is $#{self.balance}."
end

def valid?
    self.balance > 0 && self.status == "open"
    # if 
    #     self.status
    # else
    #     self.balance == 0 || self.status == "closed"
    #     self.status = "closed"
    #     self.status
    # end
end

def close_account
    self.status = "closed"
end


def self.all
    @@all
end

end
