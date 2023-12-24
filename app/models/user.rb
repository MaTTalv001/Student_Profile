class User < ApplicationRecord
  authenticates_with_sorcery!
  validates :first_name, length: { maximum: 16 }, presence: true
  validates :last_name, length: { maximum: 16 }, presence: true
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :email, uniqueness: true
  validates :email, presence: true
  validates :nickname, length: { maximum: 16 }, presence: true
  validates :joinperiod, length: { maximum: 3 }, presence: true

end
