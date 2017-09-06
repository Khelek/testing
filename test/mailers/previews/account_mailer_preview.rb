class AccountMailerPreview < ActionMailer::Preview
  # http://localhost:3000/rails/mailers/account_mailer/notify
  def notify
    account = Account.last
    message = Message.last
    AccountMailer.notify(message, account)
  end
end
