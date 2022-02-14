class Holiday < ActiveHash::Base
  self.data = [
    { id: 1, name: '月' },
    { id: 2, name: '火' },
    { id: 3, name: '水' },
    { id: 4, name: '木' },
    { id: 5, name: '金' },
    { id: 6, name: '土' },
    { id: 7, name: '日' },
    { id: 8, name: '週休二日制(非固定)' }
  ]

  include ActiveHash::Associations
  has_many :jobs
end