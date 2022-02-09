class Job < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :agency
  belongs_to :occupation
  belongs_to :line
end
