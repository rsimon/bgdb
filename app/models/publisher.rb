class Publisher < ActiveRecord::Base
  dragonfly_accessor :logo
  
  has_many :games, :through => :productions
end
