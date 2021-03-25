FactoryBot.define do
  factory :operation do
    email                  {'ebiebi@gmail.com'}
    password               {'ebiebi12345'}
    operation_name         { '山田太郎' }
    address                { '福岡県福岡市' }
    city                   { '神奈川1-1-1' }
    person                 { '山田太郎' }
    operation_phone        { '09012345678' }
  end
end
