class Book < ApplicationRecord
  belongs_to :publishing_company

  validates :token, presence: true

  scope :search, ->(term) { where('upper(title) LIKE :q OR upper(genre) LIKE :q OR upper(author) LIKE :q', q: "%#{term.upcase}%") if term.present? }
  scope :by_token, ->(token) { where(token: token) }
end
