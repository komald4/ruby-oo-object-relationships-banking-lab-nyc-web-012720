 require_relative './bank_account.rb'


class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end

  def execute_transaction
     if self.valid? == false || status == "complete"
       @status = "rejected"
       print "Transaction rejected. Please check your account balance."
     else
       @sender.balance -= @amount
       @receiver.balance += @amount
       @status = "complete"
     end
   end
end
