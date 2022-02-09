class Occupation < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '事務・オフィス系' },
    { id: 3, name: '工場・軽作業・物流・土木系' },
    { id: 4, name: 'IT・エンジニア系' },
    { id: 5, name: '販売・営業・飲食・サービス系' },
    { id: 6, name: '医療・介護・研究・教育・WEB・クリエイター系' }
  ]

  include ActiveHash::Associations
  has_many :jobs
end