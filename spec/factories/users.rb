FactoryBot.define do
  factory :user do
    email                  {'ebi@gmail.com'}
    password               {'ebi12345'}
    name                   { 'えびちゃん' }
    last_name              { '海老沼' }
    first_name             { '雄紀' }
    last_name_kana         { 'エビヌマ' }
    first_name_kana        { 'ユウキ' }
    phone                  { '09012345678' }
  end
end
