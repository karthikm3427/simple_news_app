class News < ActiveRecord::Base
	belongs_to :country
    belongs_to :state
    belongs_to :editor
end
