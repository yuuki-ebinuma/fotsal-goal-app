require 'rails_helper'

RSpec.describe User, type: :model do
  describe "ユーザー新規登録"do
    before do
      @user = FactoryBot.build(:user)
    end

    context "ユーザーが登録できる時" do
      it "全ての項目を入力できれば登録できること" do
        expect(@user).to be_valid
      end
    end

    context "ユーザーが登録できない時" do
      it "nameが空だと登録できない" do
        @user.name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Name can't be blank")
      end

      it "emailが空だと登録できない" do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end

      it "passwordが空だと登録できない" do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end

      it "last_nameが空だと登録できない" do
        @user.last_name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name can't be blank")
      end

      it "first_nameが空だと登録できない" do
        @user.first_name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("First name can't be blank")
      end

      it "last_name_kanaが空だと登録できない" do
        @user.last_name_kana = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name kana can't be blank")
      end

      it "first_name_kanaが空だと登録できない" do
        @user.first_name_kana = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("First name kana can't be blank")
      end

      it "電話番号が空だと登録できない" do
        @user.phone = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Phone can't be blank")
      end


      it "last_name_kanaは全角でないと登録できない" do
        @user.last_name = "ｱｲｳｴｵ"
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name is invalid")
      end

      it "first_name_kanaは全角でないと登録できない" do
        @user.first_name = "ｱｲｳｴｵ"
        @user.valid?
        expect(@user.errors.full_messages).to include("First name is invalid")
      end

      it "last_nameは全角でないと登録できない" do
        @user.last_name = "ｱｲｳｴｵ"
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name is invalid")
      end

      it "first_nameは全角でないと登録できない" do
        @user.first_name = "ｱｲｳｴｵ"
        @user.valid?
        expect(@user.errors.full_messages).to include("First name is invalid")
      end

      it "電話番号が11桁でないと登録できない" do
        @user.phone = "090123456789"
        @user.valid?
        expect(@user.errors.full_messages).to include("Phone is invalid")
      end
    end
  end
end
