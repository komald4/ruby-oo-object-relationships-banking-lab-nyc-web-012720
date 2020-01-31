class Transfer
  attr_accessor :sender, :receiver, :transfer_amount
  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end


end
