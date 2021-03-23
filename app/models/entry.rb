class Entry < ApplicationRecord
  belongs_to :tournament
  belongs_to :user

  with_options presence: true do
    validates :team_name
    validates :team_captain
    validates :phone
  end
  
end
