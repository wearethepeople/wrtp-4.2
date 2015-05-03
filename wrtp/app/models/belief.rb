class Belief < ActiveRecord::Base
  validates :title, :summary, :explanation, presence: true
end
