class BookResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :title, :string
  attribute :publish_year, :integer
  attribute :pages, :integer
  attribute :description, :string
  attribute :image, :string
  attribute :author_id, :integer

  # Direct associations

  has_many   :reviews

  # Indirect associations

end
