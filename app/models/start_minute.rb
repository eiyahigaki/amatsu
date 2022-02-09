class Start_minute < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '00' },
    { id: 3, name: '15' },
    { id: 4, name: '30' },
    { id: 5, name: '45' },
  ]

  include ActiveHash::Associations
  has_many :jobs
end