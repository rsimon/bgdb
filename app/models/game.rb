class Game < ActiveRecord::Base
  self.per_page = 10
  belongs_to :publisher
  belongs_to :author
  belongs_to :expansion_to, :class_name => 'Game'
end
