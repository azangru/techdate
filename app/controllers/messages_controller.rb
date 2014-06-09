class MessagesController < ApplicationController
  
  ## ANY REASON WE MAY NEED TO INDEX ALL MESSAGES?
  # # GET /messages
  # # GET /messages.json
  # def index
  #   @messages = Message.all

  #   respond_to do |format|
  #     format.html # index.html.erb
  #     format.json { render json: @messages }
  #   end
  # end

  # GET /messages/inbox
  def index
    @messages = if params[:type]=="inbox"
      Message.where(recipient_id: current_user.id)
    elsif params[:type]=="sent"
      Message.where(sender_id: current_user.id)
    else
      raise ArgumentError
    end
    @type = "inbox"
    render :index
  end

  # GET /messages/sent
  # def sent
  #   @messages = Message.where(sender_id: current_user.id)
  #   @type = "inbox"
  #   render :index
  # end


  # GET /users/:user_id/messages/new
  # GET /users/:user_id/messages/new.json
  def new
    @message = Message.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @message }
    end
  end

  # POST /users/:user_id/messages
  # POST /users/:user_id/messages.json
  def create
    @message = Message.new(params[:message])
    @message.recipient_id = params[:user_id]
    @message.sender_id = current_user.id
    @message.read = false

    respond_to do |format|
      if @message.save
        format.html { redirect_to show_user_profile_path(params[user_id]), notice: 'Message was successfully sent.' }
        format.json { render json: @message, status: :created, location: @message }
      else
        format.html { render action: "new" }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
    @message = Message.find(params[:id])
    @message.read = true

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @message }
    end
  end


  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    respond_to do |format|
      format.html { redirect_to messages_url }
      format.json { head :no_content }
    end
  end
end







  ## THESE CONTROLLERS MOST LIKELY WON'T BE NEEDED

  # # GET /messages/1/edit
  # def edit
  #   @message = Message.find(params[:id])
  # end


  # PUT /messages/1
  # PUT /messages/1.json
  def update
    @message = Message.find(params[:id])
    if @message.recipient == current_user
      @message.remove_from_inbox = true
    if @message.sender == current_user
      @message.remove_from_sent = true
    respond_to do |format|
      if @message.update_attributes(params[:message])
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end