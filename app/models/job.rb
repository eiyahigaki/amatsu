class Job < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :agency
  belongs_to :occupation
  belongs_to :prefecture
  belongs_to :line
  belongs_to :station
  belongs_to :classification
  belongs_to :period
end
