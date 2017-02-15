class Ad < ApplicationRecord
  belongs_to :adgroup, optional: true
end
