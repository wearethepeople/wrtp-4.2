class Issue < ActiveRecord::Base
  # Associations
  has_many :beliefs

  # Validations
  validates :name, :summary, presence: true

  validates_associated :beliefs
end
