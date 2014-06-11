module MessagesHelper

  def other_mailbox
    if params[:type] == "inbox"
      "sent"
    else 
      "inbox"
    end
  end

end
