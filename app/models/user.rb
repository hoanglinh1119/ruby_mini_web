class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: {moderator: 0 , adminnistrator: 1}
  enum status: {disactive: 0, active: 1}
  validates :user_name, presence: true, length: {in:6..20}
  validates :password, presence: true, confirmation: true,
                      length: {within: 6..40},
                      on: :create
  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i.freeze
  validates :email, presence: true, uniqueness: {case_sensitive: false},
                    format: {with: VALID_EMAIL_REGEX}
end
