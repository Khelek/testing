# coding: utf-8
class EmailForm < ApplicationFormWithoutModel
  properties :account, :message, virtual: true

  validates :account, presence: true
  validates :message, presence: true
end
