class Song < ApplicationRecord
  validates :title, presence: true
  belongs_to :rapper

end
