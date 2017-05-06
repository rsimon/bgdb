class Game < ActiveRecord::Base
  self.per_page = 10

  dragonfly_accessor :image

  has_many :copies

  has_many :publishers, through: :productions
  has_many :productions, dependent: :destroy

  has_many :authors, through: :authorships
  has_many :authorships, dependent: :destroy

  belongs_to :expansion_to, :class_name => 'Game'

  accepts_nested_attributes_for :copies, allow_destroy: true
  accepts_nested_attributes_for :productions, allow_destroy: true
  accepts_nested_attributes_for :authorships, allow_destroy: true
end
