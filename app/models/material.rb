class Material < ActiveRecord::Base
  belongs_to :project
  validates_formatting_of :where_to_buy, using: :url
end
