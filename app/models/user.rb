class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_many :entries

  with_options presence:true, format: {with: /\A[ぁ-んァ-ヶ一-龥々]+\z/} do
      validates :last_name
      validates :first_name
  end

  with_options presence:true, format: {with: /\A[ァ-ヶ一]+\z/} do
    validates :last_name_kana
    validates :first_name_kana
  end

  with_options presence:true do
    validates :name
    validates :phone, format: {with:/\A\d{11}\z/}
  end 
end
