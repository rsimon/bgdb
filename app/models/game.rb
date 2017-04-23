class Game < ActiveRecord::Base
  belongs_to :publisher
  belongs_to :author
  belongs_to :expansion_to, :class_name => 'Game'
end
