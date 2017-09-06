# coding: utf-8
class AccountForm < ApplicationForm
  properties :balance, :currency, :name
  validates :balance, presence: true

  # TODO валидации?
end
