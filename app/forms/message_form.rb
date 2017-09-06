# coding: utf-8
class MessageForm < ApplicationForm
  properties :title, :text

  validates :title, presence: true
  validates :text, presence: true
end
