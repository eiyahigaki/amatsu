class Job < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :agency
  belongs_to :occupation
  belongs_to :prefecture
  belongs_to :line
  belongs_to :station
  belongs_to :classification
  belongs_to :period
  has_one_attached :image

  with_options presence: true do
    validates :city, :house_number, :description, :start_time, :end_time, :status, :holiday, :image
    validates :title, length: { maximum: 30 }
    validates :occupation_id, :prefecture_id, :line_id, :station_id, :classification_id, :period_id,
              numericality: { other_than: 1, message: 'can`t be blank' }
    validates :salary, numericality: { greater_than_or_equal_to: 1041 }
  end
end
