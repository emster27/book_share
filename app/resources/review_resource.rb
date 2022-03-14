class ReviewResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :user_id, :integer
  attribute :book_id, :integer
  attribute :review, :string
  attribute :rating, :float

  # Direct associations

  # Indirect associations

end
