# coding: utf-8
class Web::EmailsController < Web::ApplicationController
  def index
  end

  def new
    @messages = Message.all
    @accounts = Account.all
    @email = EmailForm.new
  end

  def create
    @email = EmailForm.new

    if @email.validate(params[:email])
      account  = Account.find(@email.account)
      message = Message.find(@email.message)

      AccountMailer.notify(message, account).deliver_now

      # TODO move messages to locales?
      redirect_to new_email_path, notice: 'Email was successfully sended.'
    else
      @messages = Message.all
      @accounts = Account.all
      render :new
    end
  end
end
