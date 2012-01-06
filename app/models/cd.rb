class Cd < ActiveRecord::Base
    validates :name, :presence => true
    validates :year, :presence => true, :length => {:minimum => 4, :maximum => 4}
    has_many :tracks
end
