class Classification < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '時給' },
    { id: 3, name: '日給' },
    { id: 4, name: '月給' },
    { id: 5, name: '年俸' },
    { id: 6, name: '完全出来高制' }
  ]

  include ActiveHash::Associations
  has_many :jobs
end
