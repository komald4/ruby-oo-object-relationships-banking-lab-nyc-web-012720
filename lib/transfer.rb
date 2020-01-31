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
    if @sender.balance >= @amount && status == "pending" && self.valid?
     #if self.valid? == false && status == "complete" && @sender.balance <= @amount
     @sender.balance -= @amount
     @receiver.balance += @amount
     @status = "rejected"
   else
       @status = "rejected"
       "Transaction rejected. Please check your account balance."
     end
   end
end
