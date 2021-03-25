class Tournament < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :entry_participation
  belongs_to :event_date
  belongs_to :event_month
  belongs_to :event_time

  belongs_to :operation
  has_many   :entries

  with_options presence:true do
    validates :event_title
    validates :event_month_id
    validates :event_date_id
    validates :event_time_id
    validates :entry_participation_id
    validates :fee
    validates :event_address
    validates :event_description
  end

  with_options numericality: { other_than: 0 } do
    validates :event_month_id
    validates :event_date_id
    validates :event_time_id
    validates :entry_participation_id
  end
  
end
