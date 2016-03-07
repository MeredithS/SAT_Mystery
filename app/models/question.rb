class Question < ActiveRecord::Base
  has_many :scores
  belongs_to :clue
end