class Book < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :description, :presence => true

  validates :publish_year, :presence => true

  validates :title, :presence => true

  # Scopes

  def to_s
    title
  end

end
