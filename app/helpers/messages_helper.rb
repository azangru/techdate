module MessagesHelper

  def other_mailbox
    if params[:type] == "inbox"
      "sent"
    else 
      "inbox"
    end
  end

  def read_unread(message)
    if message.read == false 
      {class: "message-row"} 
    else
      {}
    end
  end

end
