class Country < ActiveRecord::Base
  has_many :states
  has_many :people
  has_many :news
  has_many :editors
  has_many :mediahouses
end
