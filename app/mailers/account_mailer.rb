class AccountMailer < ApplicationMailer
  def notify(message, account)
    email = "what_email@example.com"
    subject = "example subject"
    body = Mustache.render(message.text, account.attributes)

    mail(to: email, subject: subject, body: body)
  end
end
