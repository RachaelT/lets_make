class Project < ActiveRecord::Base
  belongs_to :user
  has_many :materials
  has_and_belongs_to_many :tags
end
