class State < ActiveRecord::Base
  belongs_to :country
  has_many :people
  has_many :editors
  has_many :news
  has_many :mediahouses
end