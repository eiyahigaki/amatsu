class Agency < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  has_many :jobs

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :agency_name, :agency_president, :city, :house_number
    validates :prefecture_id, numericality: { other_than: 1, message: 'can`t be blank' }
    validates :permit_number, format: { with: /\A[0-9]{2}-[0-9]{6}\z/, message: 'is invalid. Include hyphen(-)' }
  end

  VALID_PASSWORD_REGEX = /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}/
  validates :password, format: { with: VALID_PASSWORD_REGEX }
end
