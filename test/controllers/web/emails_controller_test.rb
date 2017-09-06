require 'test_helper'

class Web::EmailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account = create :account
    @message = create :message,
                      text: 'Hi! Your name {{name}}, your balance {{balance}}{{currency}}'
  end

  test "should get new" do
    get new_email_url
    assert_response :success
  end

  test "should send email" do
    post emails_url, params: { email: {account: @account.id, message: @message.id} }
    assert_redirected_to new_email_url

    mail = ActionMailer::Base.deliveries.last
    expected = "Hi! Your name #{@account.name}, your balance #{@account.balance}#{@account.currency}"
    assert { mail.body == expected }
  end
end
