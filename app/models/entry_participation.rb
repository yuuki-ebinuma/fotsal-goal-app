class EntryParticipation < ActiveHash::Base
  self.data = [
    { id: 0, name: '--'},
    { id: 1, name: '1チーム'},
    { id: 2, name: '2チーム'},
    { id: 3, name: '3チーム'},
    { id: 4, name: '4チーム'},
    { id: 5, name: '5チーム'},
    { id: 6, name: '6チーム'},
    { id: 7, name: '7チーム'},
    { id: 8, name: '8チーム'},
    { id: 9, name: '9チーム'},
    { id: 10, name: '10チーム'},

  ]

  include ActiveHash::Associations
  has_many :tournaments

end
