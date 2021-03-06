class Review < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :book

  # Indirect associations

  has_one    :author,
             through: :book,
             source: :author

  # Validations

  validates :book_id, presence: true

  validates :rating,
            inclusion: { in: ["0", ".5", "1", "1.5", "2", "2.5", "3", "3.5", "4", "4.5",
                              "5"] }

  validates :user_id, presence: true

  # Scopes

  def to_s
    user.to_s
  end
end
