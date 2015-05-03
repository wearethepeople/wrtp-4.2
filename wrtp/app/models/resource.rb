class Resource < ActiveRecord::Base
  validates :name, :description, :url, presence: true
end
