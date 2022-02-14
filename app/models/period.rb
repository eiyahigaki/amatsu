class Period < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '10日以内' },
    { id: 3, name: '1ヶ月以内' },
    { id: 4, name: '1~3ヶ月以内' },
    { id: 5, name: '3ヶ月以上(長期)' }
  ]

  include ActiveHash::Associations
  has_many :jobs
end
