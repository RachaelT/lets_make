class Instruction < ActiveRecord::Base
  belongs_to :project
  validates_formatting_of :thumb_url, using: :url
end
