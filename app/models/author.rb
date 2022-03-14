class Author < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :book_count, :numericality => { :greater_than_or_equal_to => 1 }

  validates :name, :presence => true

  # Scopes

  def to_s
    name
  end

end
