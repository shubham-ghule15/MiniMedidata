class Study < ApplicationRecord

  validates :name, :drug, presence: true
  validates :age_limit, numericality: { greater_than: 7 }
  validates :phase, numericality: { less_than: 5 }
  belongs_to :study_group
  has_many :sites
end
