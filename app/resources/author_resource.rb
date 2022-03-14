class AuthorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :bio, :string
  attribute :book_count, :integer

  # Direct associations

  has_many :books

  # Indirect associations

  has_many :reviews do
    assign_each do |author, reviews|
      reviews.select do |r|
        r.id.in?(author.reviews.map(&:id))
      end
    end
  end
end
