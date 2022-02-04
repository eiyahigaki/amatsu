require 'rails_helper'

RSpec.describe Agency, type: :model do
  before do
    @agency = FactoryBot.build(:agency)
  end

  describe 'agency新規登録' do
    context '新規登録できるとき' do
      it '全てのカラムが存在すれば登録できる' do
        expect(@agency).to be_valid
      end

      it 'building_nameが空でも登録できる' do
        @agency.building_name = ''
        expect(@agency).to be_valid
      end

      it 'websiteが空でも登録できる' do
        @agency.website = ''
        expect(@agency).to be_valid
      end
    end
    context '新規登録できないとき' do
      it 'emailが空では登録できない' do
        @agency.email = ''
        @agency.valid?
        expect(@agency.errors.full_messages).to include("Email can't be blank")
      end
      it 'passwordが空では登録できない' do
        @agency.password = ''
        @agency.valid?
        expect(@agency.errors.full_messages).to include("Password can't be blank")
      end
      it 'agency_nameが空では登録できない' do
        @agency.agency_name = ''
        @agency.valid?
        expect(@agency.errors.full_messages).to include("Agency name can't be blank")
      end
      it 'agency_presidentが空では登録できない' do
        @agency.agency_president = ''
        @agency.valid?
        expect(@agency.errors.full_messages).to include("Agency president can't be blank")
      end
      it 'prefenture_idが空(id:1)では登録できない' do
        @agency.prefecture_id = 1
        @agency.valid?
        expect(@agency.errors.full_messages).to include("Prefecture can`t be blank")
      end
      it 'cityが空では登録できない' do
        @agency.city = ''
        @agency.valid?
        expect(@agency.errors.full_messages).to include("City can't be blank")
      end
      it 'house_numberが空では登録できない' do
        @agency.house_number = ''
        @agency.valid?
        expect(@agency.errors.full_messages).to include("House number can't be blank")
      end
      it 'permit_numberが空では登録できない' do
        @agency.permit_number = ''
        @agency.valid?
        expect(@agency.errors.full_messages).to include("Permit number can't be blank")
      end
      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @agency.password_confirmation = ''
        @agency.valid?
        expect(@agency.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it '重複したemailが存在する場合は登録できない' do
        @agency.save
        another_agency = FactoryBot.build(:agency)
        another_agency.email = @agency.email
        another_agency.valid?
        expect(another_agency.errors.full_messages).to include('Email has already been taken')
      end
      it 'emailは@を含まないと登録できない' do
        @agency.email = 'aaaaaa'
        @agency.valid?
        expect(@agency.errors.full_messages).to include('Email is invalid')
      end
      it 'passwordが5文字以下では登録できない' do
        @agency.password = 'a1'
        @agency.valid?
        expect(@agency.errors.full_messages).to include("Password is invalid")
      end
      it 'passwordが半角英字のみの場合は登録できない' do
        @agency.password = 'aaaaaa'
        @agency.valid?
        expect(@agency.errors.full_messages).to include("Password is invalid")
      end
      it 'passwordが半角数字のみの場合は登録できない' do
        @agency.password = '111111'
        @agency.valid?
        expect(@agency.errors.full_messages).to include("Password is invalid")
      end
      it 'passwordが全角文字を含む場合は登録できない' do
        @agency.password = '１１１A A A'
        @agency.valid?
        expect(@agency.errors.full_messages).to include("Password is invalid")
      end
      it 'permit_numberが半角ハイフンを含んだ正しい形式でないと登録できない' do
        @agency.permit_number = '00000000'
        @agency.valid?
        expect(@agency.errors.full_messages).to include("Permit number is invalid. Include hyphen(-)")
      end
    end
  end
end
