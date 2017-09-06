require 'test_helper'

class Web::AccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account = create :account
    @attrs = attributes_for :account
    @attr = {name: @attrs[:name]}
  end

  test "should get index" do
    get accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_account_url
    assert_response :success
  end

  test "should create account" do
    assert_difference('Account.count') do
      post accounts_url, params: { account: @attrs }
    end

    assert_redirected_to account_url(Account.last)
    assert { Account.find_by(@attr) }
  end

  test "should show account" do
    get account_url(@account)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_url(@account)
    assert_response :success
  end

  test "should update account" do
    patch account_url(@account), params: { account: @attrs }
    assert_redirected_to account_url(@account)

    @account.reload
    assert { @account.name == @attrs[:name] }
  end

  test "should destroy account" do
    assert_difference('Account.count', -1) do
      delete account_url(@account)
    end

    assert_redirected_to accounts_url
    assert { Account.find_by(@attr).nil? }
  end
end
