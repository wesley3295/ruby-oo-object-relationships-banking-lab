class Transfer
  attr_reader :sender, :receiver, :amount
attr_accessor :status

@@all = []

def initialize(sender, receiver, amount)
  @status = "pending"
  @sender = sender
  @receiver = receiver
  @amount = amount
    @@all << self
end

def valid?
@sender.valid? && @receiver.valid?
end

def execute_transaction
  if valid? && @sender.balance >= @amount && self.status == "pending"
    sender.balance -= @amount
    receiver.balance += @amount
    self.status = "complete"
  else
    self.status = "rejected"
    "Transaction rejected. Please check your account balance."
  end
  
end

def reverse_transfer
  if valid? && @sender.balance >= @amount && self.status == "complete"
    receiver.balance -= @amount
    sender.balance += @amount
    self.status = "reversed"
  else
    self.status = "rejected"
    "Transaction rejected. Please check your account balance."
  end
end


def self.all
    @@all
end

end
