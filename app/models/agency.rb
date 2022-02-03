class Agency < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :agency_name, :agency_president, :city, :house_number,
    validates :prefecture_id, numericality: { other_than: 1, message: 'can`t be blank' }
    validates :permit_number, format: { with: /\A\d{2}[-]\d{6}\z/, message: 'is invalid. Include hyphen(-)' }
  end

  validates :website, format: { with: /\Ahttp(s)?:\/\/([\w-]+\.)+[\w-]+(\/[\w-.\/?%&=]*)?/ }
  validates :password, format: { with: /\A[a-z0-9]+\z/ }
end
