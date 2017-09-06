# coding: utf-8
class AccountForm < ApplicationForm
  properties :balance, :currency, :name

  # TODO валидации?
  validates :name, presence: true
end
