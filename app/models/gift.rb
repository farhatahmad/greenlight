

class Gift < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_one_attached :picture

end
