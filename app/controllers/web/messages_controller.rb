# coding: utf-8
class Web::MessagesController < Web::ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  def index
    # TODO пагинация?
    @messages = Message.all
  end

  def show
  end

  def new
    @message = MessageForm.new(Message.new)
  end

  def edit
  end

  def create
    @message = MessageForm.new(Message.new)

    if @message.validate(params[:message])
      @message.save
      redirect_to @message, notice: t('.success')
    else
      render :new
    end
  end

  def update
    if @message.validate(params[:message])
      @message.save
      redirect_to @message, notice: t('.success')
    else
      render :edit
    end
  end

  def destroy
    @message.model.destroy
    redirect_to messages_url, notice: t('.success')
  end

  private
  def set_message
    @message = MessageForm.new(Message.find(params[:id]))
  end
end
