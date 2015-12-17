class Employee < ActiveRecord::Base
  has_many :meetings, as: :meetingsable
end
