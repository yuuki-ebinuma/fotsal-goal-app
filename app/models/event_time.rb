class EventTime < ActiveHash::Base
  self.data = [
    { id: 0, name: '--'},
    { id: 1, name: '9:00~'},
    { id: 2, name: '10:00~'},
    { id: 3, name: '11:00~'},
    { id: 4, name: '12:00~'},
    { id: 5, name: '13:00~'},
    { id: 6, name: '14:00~'},
    { id: 7, name: '15:00~'},
    { id: 8, name: '16:00~'},
    { id: 9, name: '17:00~'},
    { id: 10, name: '18:00~'},
    { id: 11, name: '19:00~'},
    { id: 12, name: '20:00~'},
    { id: 13, name: '21:00~'},
    { id: 14, name: '22:00~'},
    { id: 15, name: '23:00~'},
    { id: 16, name: '24:00~'},
 
  ]

  include ActiveHash::Associations
  has_many :tournaments

end