class Belief < ActiveRecord::Base
  # Associations
  belongs_to :issue

  # Validations
  validates :title, :summary, :explanation, presence: true
end
