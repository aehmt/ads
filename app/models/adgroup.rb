class Adgroup < ApplicationRecord
  belongs_to :campaign, optional: true
  has_many :ads
end
