class Operation < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tournaments

  with_options presence: true do
    validates :operation_name
    validates :address
    validates :city
    validates :person
    validates :operation_phone, format: {with:/\A\d{11}\z/}
  end
end
