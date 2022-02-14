require 'rails_helper'

RSpec.describe Job, type: :model do
  before do
    @job = FactoryBot.build(:job)
  end

  describe '案件出稿機能' do
    context '案件が出稿できる場合' do
      it '全てのカラムが存在していれば保存できる' do
        expect(@job).to be_valid
      end
      it 'building_nameが空でも保存できる' do
        @job.building_name = ""
        expect(@job).to be_valid
      end
    end
    context '案件を出稿できない場合' do
      it 'statusが空では保存できない' do
        
      end
      it 'titleが空では保存できない' do
      end
      it 'occupation_idが空(id:1)では保存できない' do
      end
      it 'prefecture_idが空(id:1)では保存できない' do
      end
      it 'cityが空では保存できない' do
      end
      it 'house_numberが空では保存できない' do
      end
      it 'line_idが空(id:1)では保存できない' do
      end
      it 'station_idが空(id:1)では保存できない' do
      end
      it 'classification_idが空(id:1)では保存できない' do
      end
      it 'salaryが空では保存できない' do
      end
      it 'salaryが1041以下では保存できない' do
      end
      it 'salaryが文字列を含む場合では保存できない' do
      end
      it 'period_idが空(id:1)では保存できない' do
      end
      it 'start_timeが空では保存できない' do
      end
      it 'end_timeが空では保存できない' do
      end
      it 'holidayが空では保存できない' do
      end
      it 'descriptionが空では保存できない' do
      end
      it 'userが紐づいていないと保存できない' do
      end
    end
  end
end
