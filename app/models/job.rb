class Job < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :agency
  belongs_to :occupation
  belongs_to :prefecture
  belongs_to :line
  belongs_to :station
  belongs_to :classification
  belongs_to :period
  belongs_to :start_hour
  belongs_to :start_minute
  belongs_to :end_hour
  belongs_to :end_minute
  has_one_attached :image

  with_options presence: true do
    validates: :title, :city, :house_number, :descirprion
    validates: :status, :holiday, acceptance: true
    validates: :pccupation_id, :prefecture_id, :line_id, :station_id, :classification_id, :period_id, :start_hour_id, ,:start_minute_id, :end_hour_id, :end_minute_id, numericality: { other_than: 1, message: 'can`t be blank' }
    validates: :salary, numericality: { greater_than_or_equal_to: 1041 }
  end
end
