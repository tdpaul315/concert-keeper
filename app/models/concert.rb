class Concert < ActiveRecord::Base 
    belongs_to :fan 

    validates :artist, :location, presence: true
end 