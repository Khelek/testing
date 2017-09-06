# coding: utf-8
class Web::AccountsController < Web::ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]

  def index
    # TODO пагинация?
    @accounts = Account.all
  end

  def show
  end

  def new
    @account = AccountForm.new(Account.new)
  end

  def edit
  end

  def create
    @account = AccountForm.new(Account.new)

    if @account.validate(params[:account])
      @account.save
      redirect_to @account, notice: 'Account was successfully created.'
    else
      render :new
    end
  end

  def update
    if @account.validate(params[:account])
      @account.save
      redirect_to @account, notice: 'Account was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @account.model.destroy
    redirect_to accounts_url, notice: 'Account was successfully destroyed.'
  end

  private
  def set_account
    @account = AccountForm.new(Account.find(params[:id]))
  end
end
