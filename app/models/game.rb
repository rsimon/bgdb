class Game < ActiveRecord::Base
  self.per_page = 10

  has_many :publishers, through: :productions
  has_many :productions, dependent: :destroy

  has_many :authors, through: :authorships
  has_many :authorships, dependent: :destroy

  belongs_to :expansion_to, :class_name => 'Game'

  accepts_nested_attributes_for :productions, :allow_destroy => true
  accepts_nested_attributes_for :authors, :allow_destroy => true
end
