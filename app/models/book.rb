class Book < ApplicationRecord
  mount_base64_uploader :image, ImageUploader

  # Direct associations

  belongs_to :author

  has_many   :reviews,
             dependent: :destroy

  # Indirect associations

  # Validations

  validates :description, presence: true

  validates :publish_year, presence: true

  validates :title, presence: true

  # Scopes

  def to_s
    title
  end
end
