class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  acts_as_voter
end
