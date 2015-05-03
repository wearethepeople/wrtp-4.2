class Issue < ActiveRecord::Base
  validates :name, :summary, presence: true
end
