class Publisher < ActiveRecord::Base
  has_many :games, :through => :productions
end
