class ReviewResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :user_id, :integer
  attribute :book_id, :integer
  attribute :review, :string
  attribute :rating, :float

  # Direct associations

  belongs_to :user

  belongs_to :book

  # Indirect associations

  has_one    :author

  filter :author_id, :integer do
    eq do |scope, value|
      scope.eager_load(:author).where(:books => {:author_id => value})
    end
  end
end
