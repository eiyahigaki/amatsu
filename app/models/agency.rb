class Agency < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :agency_name, :agency_president, :city, :house_number
    validates :prefecture_id, numericality: { other_than: 1, message: 'can`t be blank' }
    validates :permit_number, format: { with: /\A\d{2}[-]\d{6}\z/, message: 'is invalid. Include hyphen(-)' }
  end

  VALID＿PASSWORD_REGEX = /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}/
  validates :password, format: { with: VALID＿PASSWORD_REGEX }
end
