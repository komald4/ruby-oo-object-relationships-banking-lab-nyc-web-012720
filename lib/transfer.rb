class Transfer
  attr_accessor :sender, :reciever, :status
  def initialize(sender, reciever, status)
    @sender = sender
    @reciever = reciever
    @status = status
  end


end
