class Mentorada < ApplicationRecord
  validates :nome, :contato, :habilidades, presence: true
  validates :contato, format: { with: URI::MailTo::EMAIL_REGEXP }
end
