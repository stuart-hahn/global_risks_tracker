class Risk < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :severity, presence: true, inclusion: { in: %w[low medium high] }
  validates :mitigations, presence: true, length: { minimum: 10 }
end
