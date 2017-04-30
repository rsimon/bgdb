class Authorship < ActiveRecord::Base
  belongs_to :game
  belongs_to :author
end
