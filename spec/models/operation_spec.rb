require 'rails_helper'

RSpec.describe Operation, type: :model do
  describe "運営新規登録" do
    before do
      @operation = FactoryBot.build(:operation)
    end

    context "運営が登録できるとき" do
      it "全ての項目を入力できれば登録できる" do
        expect(@operation).to be_valid
        binding.pry
      end
    end

  end
end
