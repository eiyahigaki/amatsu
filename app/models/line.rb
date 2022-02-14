class Line < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '山手線' }
  ]

  include ActiveHash::Associations
  has_many :jobs
end
