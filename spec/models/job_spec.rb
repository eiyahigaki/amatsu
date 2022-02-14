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
        @job.status = nil
        @job.valid?
        expect(@job.errors.full_messages).to include("Status can't be blank")
      end
      it 'titleが空では保存できない' do
        @job.title = ""
        @job.valid?
        expect(@job.errors.full_messages).to include("Title can't be blank")
      end
      it 'occupation_idが空(id:1)では保存できない' do
        @job.occupation_id = 1
        @job.valid?
        expect(@job.errors.full_messages).to include('Occupation can`t be blank')
      end
      it 'prefecture_idが空(id:1)では保存できない' do
        @job.prefecture_id = 1
        @job.valid?
        expect(@job.errors.full_messages).to include('Prefecture can`t be blank')
      end
      it 'cityが空では保存できない' do
        @job.city = ""
        @job.valid?
        expect(@job.errors.full_messages).to include("City can't be blank")
      end
      it 'house_numberが空では保存できない' do
        @job.house_number = ""
        @job.valid?
        expect(@job.errors.full_messages).to include("House number can't be blank")
      end
      it 'line_idが空(id:1)では保存できない' do
        @job.line_id = 1
        @job.valid?
        expect(@job.errors.full_messages).to include('Line can`t be blank')
      end
      it 'station_idが空(id:1)では保存できない' do
        @job.station_id = 1
        @job.valid?
        expect(@job.errors.full_messages).to include('Station can`t be blank')
      end
      it 'classification_idが空(id:1)では保存できない' do
        @job.classification_id = 1
        @job.valid?
        expect(@job.errors.full_messages).to include('Classification can`t be blank')
      end
      it 'salaryが空では保存できない' do
        @job.salary = ""
        @job.valid?
        expect(@job.errors.full_messages).to include("Salary can't be blank")
      end
      it 'salaryが1041以下では保存できない' do
        @job.salary = 1
        @job.valid?
        expect(@job.errors.full_messages).to include("Salary must be greater than or equal to 1041")
      end
      it 'salaryが文字列を含む場合では保存できない' do
        @job.salary = '文字列'
        @job.valid?
        expect(@job.errors.full_messages).to include("Salary is not a number")
      end
      it 'period_idが空(id:1)では保存できない' do
        @job.period_id = 1
        @job.valid?
        expect(@job.errors.full_messages).to include('Period can`t be blank')
      end
      it 'start_timeが空では保存できない' do
        @job.start_time = nil
        @job.valid?
        expect(@job.errors.full_messages).to include("Start time can't be blank")
      end
      it 'end_timeが空では保存できない' do
        @job.end_time = nil
        @job.valid?
        expect(@job.errors.full_messages).to include("End time can't be blank")
      end
      it 'holidayが空では保存できない' do
        @job.holiday = nil
        @job.valid?
        expect(@job.errors.full_messages).to include("Holiday can't be blank")
      end
      it 'descriptionが空では保存できない' do
        @job.description = ""
        @job.valid?
        expect(@job.errors.full_messages).to include("Description can't be blank")
      end
      it 'agencyが紐づいていないと保存できない' do
        @job.agency = nil
        @job.valid?
        expect(@job.errors.full_messages).to include('Agency must exist')
      end
    end
  end
end
