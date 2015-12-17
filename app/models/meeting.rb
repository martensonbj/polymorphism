class Meeting < ActiveRecord::Base
  belongs_to :meetingsable, polymorphic: true
end
