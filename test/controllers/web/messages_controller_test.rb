require 'test_helper'

class Web::MessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @message = create :message
    @attrs = attributes_for :message
    @attr = {title: @attrs[:title]}
  end

  test "should get index" do
    get messages_url
    assert_response :success
  end

  test "should get new" do
    get new_message_url
    assert_response :success
  end

  test "should create message" do
    assert_difference('Message.count') do
      post messages_url, params: { message: @attrs }
    end

    assert_redirected_to message_url(Message.last)
    assert { Message.find_by(@attr) }
  end

  test "should show message" do
    get message_url(@message)
    assert_response :success
  end

  test "should get edit" do
    get edit_message_url(@message)
    assert_response :success
  end

  test "should update message" do
    patch message_url(@message), params: { message: @attrs }
    assert_redirected_to message_url(@message)

    @message.reload
    assert { @message.text == @attrs[:text] }
  end

  test "should destroy message" do
    assert_difference('Message.count', -1) do
      delete message_url(@message)
    end

    assert_redirected_to messages_url
    assert { Message.find_by(@attr).nil? }
  end
end
